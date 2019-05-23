# AntiCorruption Layer Implementation

If your application needs to deal with a database or another application whose model is undesirable or inapplicable to the model you want within your own application, use an Anticorruption Layer to translate to/from that model and yours.

Found this book on Domain Driven Design by Eric Evans where he mentions "When systems based on different models are combined, the need for the new system to adapt to the semantics of the other system can lead to a corruption of the new system’s own" which is so true.


### Example

I am really interested in solving fin-tech related problems. I am considering a credit card information fetch and then append it to an account.
To fetch this information we need to talk to an old and not much reliable SOAP server to fetch information.
There are a lot ways to implement ACL but here I will be using design patterns like facade, adapter and translator.


## Running the tests

Only mock types that you own. Don't mock types that you can't change.

```
When we create a integration test, we need to do it from a well known system state. For example, if we want to test the integration between a repository and a database we need firts we need to create table, populate with some concrete data, execute the test and check that database state has been changed in the way we had expected.
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
