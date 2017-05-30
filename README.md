# SampleRxDataSource
The simplest way how to crash RxDataSource by using UITableView header or footer view + `estimatedRowHeight` (property or implementation of a `delegate` method).

By setting these two above, methods of `UITableViewDataSource` protocol are called in a different order. Method `numberOfRowsInSection` is called before `numberOfSections` which in case of more complicated `dataSource` model may caused a crash of the app.
