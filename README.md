# AntiCorruption Layer Implementation

If your application needs to deal with a database or another application whose model is undesirable or inapplicable to the model you want within your own application, use an Anticorruption Layer to translate to/from that model and yours.

Found this book on Domain Driven Design by Eric Evans where he mentions "When systems based on different models are combined, the need for the new system to adapt to the semantics of the other system can lead to a corruption of the new system’s own" which is so true.


### Example

I am really interested in solving fin-tech related problems. I am considering a credit card information fetch and then append it to an account.
To fetch this information we need to talk to an old and not much reliable SOAP server to fetch information.
There are a lot ways to implement ACL but here I will be using design patterns like facade, adapter and translator.


## Things to achieve using ACL

* Translate Information
* Protect from other sub system failures
* Log and monitorization relationships
* Good integration testing

## Running the tests

Only mock types that you own. Don't mock types that you can't change.

I will be adding tests for the snippets soon.

```
When we create a integration test, we need to do it from a well known system state. For example, if we want to test the integration between a repository and a database we need firts we need to create table, populate with some concrete data, execute the test and check that database state has been changed in the way we had expected.
```

## Authors

* **Akhil Mantha**
