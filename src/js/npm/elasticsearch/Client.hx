package js.npm.elasticsearch;
import haxe.extern.EitherType as Either;
import haxe.DynamicAccess;

@:jsRequire('elasticsearch', 'Client')
extern class Client {
  public function new(opt:Dynamic);
  /**
    Perform many index/delete operations in a single API call.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  public function bulk(params:BulkParams, callback:Error->Dynamic->Void):Void;

  /**
    Clear the scroll request created by specifying the scroll parameter to search.

    The default method is DELETE and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  public function clearScroll(params:{ > BaseParams, ?scrollId:Either<ArrayOrValue<String>,Bool> },
      callback:Error->Dynamic->Void):Void;

  /**
    Get the number of documents for the cluster, index, type, or a query.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function count(params:CountParams, callback:Error->Dynamic->Void):Void;

  /**
    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function countPercolate(params:CountPercolateParams, callback:Error->Dynamic->Void):Void;

  /**
    Adds a typed JSON document in a specific index, making it searchable. If a document with the same index, type, and
    id already exists, an error will occur.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function create(params:CreateParams, callback:Error->Dynamic->Void):Void;

  /**
    Delete a typed JSON document from a specific index based on its id.

    The default method is DELETE and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function delete(params:DeleteParams, callback:Error->Dynamic->Void):Void;

  /**
    The default method is DELETE and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function deleteScript(params:{ > BaseParamsBody<Dynamic>, ?version:Float, ?versionType:String, ?id:String,
    ?lang:String } , callback:Error->Dynamic->Void):Void;

  /**
    The default method is DELETE and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function deleteTemplate(params:{ > BaseParamsBody<Dynamic>, ?version:Float, ?versionType:String, ?id:String },
    callback:Error->Dynamic->Void):Void;

  /**
    Returns a Bool indicating whether or not a given document exists.

    The default method is HEAD and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Bool->Void):Void {})
  public function exists(params:ExistsParams, callback:Error->Bool->Void):Void;

  /**
    Provides details about a specific document’s score in relation to a specific query. It will also tell you if the
    document matches the specified query. Also check out percolaters.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function explain(params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function fieldStats(params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    Get a typed JSON document from the index based on its id.

    The default method is GET and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function get(params:GetParams, callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function getScript(params:{ > BaseParamsBody<Dynamic>, ?version:Float, ?versionType:String, ?id:String,
    ?lang:String }, callback:Error->Dynamic->Void):Void;

  /**
    Get the source of a document by its index, type and id.

    The default method is GET and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function getSource(params:GetSourceParams, callback:Error->Dynamic->Void):Void;

  /**
    The default method is GET and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function getTemplate(params:{ > BaseParamsBody<Dynamic>, ?version:Float, ?versionType:String, ?id:String },
      callback:Error->Dynamic->Void):Void;

  /**
    Stores a typed JSON document in an index, making it searchable. When the id param is not set, a unique id will be
    auto-generated. When you specify an id either a new document will be created, or an existing document will be
    updated. To enforce "put-if-absent" behavior set the opType to "create" or use the create() method.

    Optimistic concurrency control is performed, when the version argument is specified. By default, no version checks
    are performed.

    By default, the document will be available for get() actions immediately, but will only be available for searching
    after an index refresh (which can happen automatically or manually). See indices.refresh.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function index(params:IndexParams, callback:Error->Dynamic->Void):Void;

  /**
    Get basic info from the current cluster.

    The default method is GET and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function info(params:Dynamic, callback:Error->Dynamic->Void):Void;


  /**
    Get multiple documents based on an index, type (optional) and ids. The body required by mget can take two forms: an
    array of document locations, or an array of document ids.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function mget<T>(params:Either<BaseParamsBody<{ docs: Array<{ _index:String, _type:String, _id:String,
    ?_source:Either<Array<String>, { include:Array<String>, exclude:Array<String> }> }> }>, { >BaseParamsBody<{
    ids:Array<String> }>, index:String, type:String }>, callback:Error->MGetResult<T>->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function mpercolate(params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    Execute several search requests within the same request.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.

    Perform multiple different searches, the body is made up of meta/data pairs.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function msearch(params:{ >BaseParamsBody<Array<Dynamic>>, ?searchType:SearchType,
    ?index:Either<ArrayOrValue<String>, Bool>, type:Either<ArrayOrValue<String>, Bool> },
    callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function mtermvectors(params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    Match a document against registered percolator queries.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function percolate(params:Dynamic, callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function ping(params:BaseParams, callback:Error->Dynamic->Void):Void;

  public function putScript(params:{ >BaseParamsBody<Dynamic>, ?opType:String, ?version:Float, ?versionType:String,
    ?id:String, ?lang:String }, callback:Error->Dynamic->Void):Void;

  public function putTemplate(params:{ >BaseParamsBody<Dynamic>, ?opType:String, ?version:Float, ?versionType:String,
    ?id:String }, callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function reindex(params:{ >BaseParamsBody<Dynamic>, ?refresh:Bool, ?timeout:Either<Date,Float>,
    ?consistency:Consistency, ?waitForCompletion:Bool }, callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function renderSearchTemplate(params:{ >BaseParamsBody<Dynamic>, ?id:String },
      callback:Error->Dynamic->Void):Void;

  /**
    Scroll a search request (retrieve the next set of results) after specifying the scroll parameter in a search() call.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function scroll(params:{>BaseParamsBody<Dynamic>, ?scroll:Duration, ?scrollId:String },
      callback:Error->Dynamic->Void):Void;

  /**
    Return documents matching a query, aggregations/facets, highlighted snippets, suggestions, and more. Write your
    queries as either simple query strings in the q parameter, or by specifying a full request definition using the
    Elasticsearch Query DSL in the body parameter.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function search<T>(params:SearchParams, callback:Error->SearchResult<T>->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function searchExists(params:SearchParams, callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function searchShards(params:Dynamic, callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function searchTemplate(params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    The suggest feature suggests similar looking terms based on a provided text by using a specific suggester.

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function suggest(params:SuggestParams, callback:Error->Dynamic->Void):Void;

  @:overload(function(callback:Error->Dynamic->Void):Void {})
  public function termvectors(params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    Update parts of a document. The required body parameter can contain one of two things:
    - a partial document, which will be merged with the existing one.
    - a script which will update the document content

    The default method is POST and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  public function update(params:UpdateParams, callback:Error->Dynamic->Void):Void;

  public function updateByQuery(params:Dynamic, callback:Error->Dynamic->Void):Void;

  //TODO: add definition
  var cat(default, null):Dynamic;

  //TODO: add definition
  var cluster(default, null):Dynamic;

  var indices(default, null):Indices;

  //TODO: add definition
  var nodes(default, null):Dynamic;

  //TODO: add definition
  var snapshots(default, null):Dynamic;

  //TODO: add definition
  var tasks(default, null):Dynamic;
}

typedef BaseParams = {
  /**
    The HTTP method to use for this request. All of the API methods have their own default.
   **/
  @:optional var method(default, null):js.node.http.Method;

  /**
    HTTP status codes which should not be considered errors for this request.
   **/
  @:optional var ignore(default, null):ArrayOrValue<Int>;

  /**
    Starting in elasticsearch 1.6 the filterPath parameter can be passed to any API to filter it’s reponse values. See
    the elasticsearch response filtering docs for more information.
   **/
  @:optional var filterPath(default, null):ArrayOrValue<String>;

  @:optional var requestTimeout(default, null):Float;
  @:optional var maxRetries(default, null):Int;
};

typedef BaseParamsBody<T> = { > BaseParams,
  /**
    The body to send along with this request. If the body is a string it will be passed along as is, otherwise it is
    passed to the serializer and converted to either JSON or a newline separated list of JSON objects based on the API
    method.
   **/
  @:optional var body(default, null):T;
};

abstract ArrayOrValue<T>(Dynamic) from Array<T> from T {
}

typedef BulkParams = { > BaseParams,
  /**
    An array of actions, with one entry for the description, and one for its action:

    example:
    ```haxe
    [
      // action description
      { index:  { _index: 'myindex', _type: 'mytype', _id: 1 } },
       // the document to index
      { title: 'foo' },
      // action description
      { update: { _index: 'myindex', _type: 'mytype', _id: 2 } },
      // the document to update
      { doc: { title: 'foo' } },
      // action description
      { delete: { _index: 'myindex', _type: 'mytype', _id: 3 } },
      // no document needed for this delete
    ]
    ```
   **/
  var body(default, null):Array<Dynamic>;

  /**
    Explicit write consistency setting for the operation
   **/
  @:optional var consistency(default, null):Consistency;

  /**
    Refresh the index after performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    Explicit operation timeout
   **/
  @:optional var timeout(default, null):Either<Date,Float>;

  /**
    Default document type for items which don’t provide one
   **/
  @:optional var type(default, null):String;

  /**
    Default comma-separated list of fields to return in the response for updates
   **/
  @:optional var fields(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    Default index for items which don’t provide one
   **/
  @:optional var index(default, null):String;
};

typedef CountParams = { > BaseParamsBody<Dynamic>,
  /**
    Whether specified concrete indices should be ignored when unavailable (missing or closed)
   **/
  @:optional var ignoreUnavailable(default, null):Bool;

  /**
    Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes _all string or
    when no indices have been specified)
   **/
  @:optional var allowNoIndices(default, null):Bool;

  /**
    Whether to expand wildcard expression to concrete indices that are open, closed or both.
   **/
  @:optional var expandWildcards(default, null):ExpandWildcards;
  /**
    Include only documents with a specific _score value in the result
   **/
  @:optional var minScore(default, null):Float;

  /**
    Specify the node or shard the operation should be performed on (default: random)
   **/
  @:optional var preference(default, null):String;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    Query in the Lucene query string syntax
   **/
  @:optional var q(default, null):String;

  /**
    The analyzer to use for the query string
   **/
  @:optional var analyzer(default, null):String;

  /**
    Specify whether wildcard and prefix queries should be analyzed (default: false)
   **/
  @:optional var analyzeWildcard(default, null):Bool;

  /**
    The default operator for query string query (AND or OR)
    @default OR
   **/
  @:optional var defaultOperator(default, null):QueryOperator;

  /**
    The field to use as default where no field prefix is given in the query string
   **/
  @:optional var df(default, null):String;

  /**
    Specify whether format-based query failures (such as providing text to a numeric field) should be ignored
   **/
  @:optional var lenient(default, null):Bool;

  /**
    Specify whether query terms should be lowercased
   **/
  @:optional var lowercaseExpandedTerms(default, null):Bool;

  /**
    A comma-separated list of indices to restrict the results
   **/
  @:optional var index(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A comma-separated list of types to restrict the results
   **/
  @:optional var type(default, null):Either<ArrayOrValue<String>, Bool>;
}

typedef CountPercolateParams = { > BaseParamsBody<Dynamic>,
    /**
    A comma-separated list of specific routing values
     **/
  @:optional var routing(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    Specify the node or shard the operation should be performed on (default: random)
   **/
  @:optional var preference(default, null):String;

  /**
    Whether specified concrete indices should be ignored when unavailable (missing or closed)
   **/
  @:optional var ignoreUnavailable(default, null):Bool;

  /**
    Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes _all string or
    when no indices have been specified)
   **/
  @:optional var allowNoIndices(default, null):Bool;

  /**
    Whether to expand wildcard expression to concrete indices that are open, closed or both.
   **/
  @:optional var expandWildcards(default, null):ExpandWildcards;

  /**
    The index to count percolate the document into. Defaults to index.
   **/
  @:optional var percolateIndex(default, null):String;

  /**
    The type to count percolate document into. Defaults to type.
   **/
  @:optional var percolateType(default, null):String;

  /**
    Explicit version number for concurrency control
   **/
  @:optional var version(default, null):Float;

  /**
    Specific version type
   **/
  @:optional var versionType(default, null):String;

  /**
    The index of the document being count percolated.
   **/
  @:optional var index(default, null):String;

  /**
    The type of the document being count percolated.
   **/
  @:optional var type(default, null):String;

  /**
    Substitute the document in the request body with a document that is known by the specified id. On top of the id, the
    index and type parameter will be used to retrieve the document from within the cluster.
   **/
  @:optional var id(default, null):String;
};

@:enum abstract ExpandWildcards(String) from String {
  var Open = "open";
  var Closed = "closed";
  var None = "none";
  var All = "all";
}

@:enum abstract QueryOperator(String) from String {
  var And = "AND";
  var Or = "OR";
}

@:enum abstract Consistency(String) from String {
  var One = "one";
  var Quorum = "quorum";
  var All = "all";
}

typedef CreateParams = { >BaseParamsBody<Dynamic>,
    /**
    Explicit write consistency setting for the operation
     **/
  @:optional var consistency(default, null):Consistency;

  /**
    ID of the parent document
   **/
  @:optional var parent(default, null):String;

  /**
    Refresh the index after performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    Explicit operation timeout
   **/
  @:optional var timeout(default, null):Either<Date, Float>;

  /**
    Explicit timestamp for the document
   **/
  @:optional var timestamp(default, null):Either<Date, Float>;

  /**
    Expiration time for the document
   **/
  @:optional var ttl(default, null):Duration;

  /**
    Explicit version number for concurrency control
   **/
  @:optional var version(default, null):Float;

  /**
    Specific version type
   **/
  @:optional var versionType(default, null):String;

  /**
    Document ID
   **/
  @:optional var id(default, null):String;

  /**
    The name of the index
   **/
  @:optional var index(default, null):String;

  /**
    The type of the document
   **/
  @:optional var type(default, null):String;
};

typedef DeleteParams = { > BaseParamsBody<Dynamic>,
  /**
    Specific write consistency setting for the operation
   **/
  @:optional var consistency(default, null):Consistency;

  /**
    ID of parent document
   **/
  @:optional var parent(default, null):String;

  /**
    Refresh the index after performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    Explicit operation timeout
   **/
  @:optional var timeout(default, null):Either<Date, Float>;

  /**
    Explicit version number for concurrency control
   **/
  @:optional var version(default, null):Float;

  /**
    Specific version type
   **/
  @:optional var versionType(default, null):String;

  /**
    The document ID
   **/
  @:optional var id(default, null):String;

  /**
    The name of the index
   **/
  @:optional var index(default, null):String;

  /**
    The type of the document
   **/
  @:optional var type(default, null):String;
};

typedef ExistsParams = { > BaseParamsBody<Dynamic>,
  /**
    The ID of the parent document
   **/
  @:optional var parent(default, null):String;

  /**
    Specify the node or shard the operation should be performed on (default: random)
   **/
  @:optional var preference(default, null):String;

  /**
    Specify whether to perform the operation in realtime or search mode
   **/
  @:optional var realtime(default, null):Bool;

  /**
    Refresh the shard containing the document before performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    The document ID
   **/
  @:optional var id(default, null):String;

  /**
    The name of the index
   **/
  @:optional var index(default, null):String;

  /**
    The type of the document (use _all to fetch the first document matching the ID across all types)
   **/
  @:optional var type(default, null):String;
};

typedef GetParams = { > BaseParamsBody<Dynamic>,
  /**
    A comma-separated list of fields to return in the response
   **/
  @:optional var fields(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    The ID of the parent document
   **/
  @:optional var parent(default, null):String;

  /**
    Specify the node or shard the operation should be performed on (default: random)
   **/
  @:optional var preference(default, null):String;

  /**
    Specify whether to perform the operation in realtime or search mode
   **/
  @:optional var realtime(default, null):Bool;

  /**
    Refresh the shard containing the document before performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    True or false to return the _source field or not, or a list of fields to return
   **/
  @:optional var _source(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A list of fields to exclude from the returned _source field
   **/
  @:optional var _sourceExclude(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A list of fields to extract and return from the _source field
   **/
  @:optional var _sourceInclude(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    Explicit version number for concurrency control
   **/
  @:optional var version(default, null):Float;

  /**
    Specific version type
   **/
  @:optional var versionType(default, null):String;

  /**
    The document ID
   **/
  @:optional var id(default, null):String;

  /**
    The name of the index
   **/
  @:optional var index(default, null):String;

  /**
    The type of the document (use _all to fetch the first document matching the ID across all types)
   **/
  @:optional var type(default, null):String;
};

typedef GetSourceParams = { > BaseParamsBody<Dynamic>,
  /**
    The ID of the parent document
   **/
  @:optional var parent(default, null):String;

  /**
    Specify the node or shard the operation should be performed on (default: random)
   **/
  @:optional var preference(default, null):String;

  /**
    Specify whether to perform the operation in realtime or search mode
   **/
  @:optional var realtime(default, null):Bool;

  /**
    Refresh the shard containing the document before performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    True or false to return the _source field or not, or a list of fields to return
   **/
  @:optional var _source(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A list of fields to exclude from the returned _source field
   **/
  @:optional var _sourceExclude(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A list of fields to extract and return from the _source field
   **/
  @:optional var _sourceInclude(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    Explicit version number for concurrency control
   **/
  @:optional var version(default, null):Float;

  /**
    Specific version type
   **/
  @:optional var versionType(default, null):String;

  /**
    The document ID
   **/
  @:optional var id(default, null):String;

  /**
    The name of the index
   **/
  @:optional var index(default, null):String;

  /**
    The type of the document; use _all to fetch the first document matching the ID across all types
   **/
  @:optional var type(default, null):String;
};

typedef IndexParams = { > BaseParamsBody<Dynamic>,
  /**
    Explicit write consistency setting for the operation
   **/
  @:optional var consistency(default, null):Consistency;

  /**
    ID of the parent document
   **/
  @:optional var parent(default, null):String;

  /**
    Refresh the index after performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    Explicit operation timeout
   **/
  @:optional var timeout(default, null):Either<Date, Float>;

  /**
    Explicit timestamp for the document
   **/
  @:optional var timestamp(default, null):Either<Date, Float>;

  /**
    Expiration time for the document
   **/
  @:optional var ttl(default, null):Duration;

  /**
    Explicit version number for concurrency control
   **/
  @:optional var version(default, null):Float;

  /**
    Specific version type
   **/
  @:optional var versionType(default, null):String;

  /**
    Document ID
   **/
  var id(default, null):String;

  /**
    The name of the index
   **/
  var index(default, null):String;

  /**
    The type of the document
   **/
  @:optional var type(default, null):String;
};

@:enum abstract SearchType(String) from String {
  var QueryThenFetch = "query_then_fetch";
  var QueryAndFetch = "query_and_fetch";
  var DfsQueryThenFetch = "dfs_query_then_fetch";
  var DfsQueryAndFetch = "dfs_query_and_fetch";
  var Count = "count";
  var Scan = "scan";
}

typedef SearchParams = { >BaseParamsBody<Dynamic>,
  /**
    The analyzer to use for the query string
   **/
  @:optional var analyzer(default, null):String;

  /**
    Specify whether wildcard and prefix queries should be analyzed (default: false)
   **/
  @:optional var analyzeWildcard(default, null):Bool;

  /**
    The default operator for query string query (AND or OR)
   **/
  @:optional var defaultOperator(default, null):QueryOperator;

  /**
    The field to use as default where no field prefix is given in the query string
   **/
  @:optional var df(default, null):String;

  /**
    Specify whether to return detailed information about score computation as part of a hit
   **/
  @:optional var explain(default, null):Bool;

  /**
    A comma-separated list of fields to return as part of a hit
   **/
  @:optional var fields(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A comma-separated list of fields to return as the field data representation of a field for each hit
   **/
  @:optional var fielddataFields(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    Starting offset (default: 0)
   **/
  @:optional var from(default, null):Float;

  /**
    Whether specified concrete indices should be ignored when unavailable (missing or closed)
   **/
  @:optional var ignoreUnavailable(default, null):Bool;

  /**
    Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes _all string or
    when no indices have been specified)
   **/
  @:optional var allowNoIndices(default, null):Bool;

  /**
    Whether to expand wildcard expression to concrete indices that are open, closed or both.
   **/
  @:optional var expandWildcards(default, null):ExpandWildcards;

  /**
    Specify whether format-based query failures (such as providing text to a numeric field) should be ignored
   **/
  @:optional var lenient(default, null):Bool;

  /**
    Specify whether query terms should be lowercased
   **/
  @:optional var lowercaseExpandedTerms(default, null):Bool;

  /**
    Specify the node or shard the operation should be performed on (default: random)
   **/
  @:optional var preference(default, null):String;

  /**
    Query in the Lucene query string syntax
   **/
  @:optional var q(default, null):String;

  /**
    A comma-separated list of specific routing values
   **/
  @:optional var routing(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    Specify how long a consistent view of the index should be maintained for scrolled search
   **/
  @:optional var scroll(default, null):Duration;

  /**
    Search operation type
   **/
  @:optional var searchType(default, null):SearchType;

  /**
    Number of hits to return (default: 10)
   **/
  @:optional var size(default, null):Int;

  /**
    A comma-separated list of <field>:<direction> pairs
   **/
  @:optional var sort(default, null):Array<Either<DynamicAccess<SortDirection>, String>>;

  /**
    True or false to return the _source field or not, or a list of fields to return
   **/
  @:optional var _source(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A list of fields to exclude from the returned _source field
   **/
  @:optional var _sourceExclude(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A list of fields to extract and return from the _source field
   **/
  @:optional var _sourceInclude(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    The maximum number of documents to collect for each shard, upon reaching which the query execution will terminate
    early.
   **/
  @:optional var terminateAfter(default, null):Float;

  /**
    Specific tag of the request for logging and statistical purposes
   **/
  @:optional var stats(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    Specify which field to use for suggestions
   **/
  @:optional var suggestField(default, null):String;

  /**
    Specify suggest mode
   **/
  @:optional var suggestMode(default, null):SuggestMode;

  /**
    How many suggestions to return in response
   **/
  @:optional var suggestSize(default, null):Float;

  /**
    The source text for which the suggestions should be returned
   **/
  @:optional var suggestText(default, null):String;

  /**
    Explicit operation timeout
   **/
  @:optional var timeout(default, null):Either<Date, Float>;

  /**
    Whether to calculate and return scores even if they are not used for sorting
   **/
  @:optional var trackScores(default, null):Bool;

  /**
    Specify whether to return document version as part of a hit
   **/
  @:optional var version(default, null):Bool;

  /**
    Specify if request cache should be used for this request or not, defaults to index level setting
   **/
  @:optional var requestCache(default, null):Bool;

  /**
    A comma-separated list of index names to search; use _all or empty string to perform the operation on all indices
   **/
  @:optional var index(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    A comma-separated list of document types to search; leave empty to perform the operation on all types
   **/
  @:optional var type(default, null):Either<ArrayOrValue<String>, Bool>;

  @:optional var query(default, null):Dynamic;
};

@:enum abstract SuggestMode(String) from String {
  var Missing = "missing";
  var Popular = "popular";
  var Always = "always";
}

typedef SuggestParams = { >BaseParamsBody<Dynamic>,
  /**
    Whether specified concrete indices should be ignored when unavailable (missing or closed)
   **/
  @:optional var ignoreUnavailable(default, null):Bool;

  /**
    Whether to ignore if a wildcard indices expression resolves into no concrete indices. (This includes _all string or
    when no indices have been specified)
   **/
  @:optional var allowNoIndices(default, null):Bool;

  /**
    Whether to expand wildcard expression to concrete indices that are open, closed or both.
   **/
  @:optional var expandWildcards(default, null):ExpandWildcards;

  /**
    Specify the node or shard the operation should be performed on (default: random)
   **/
  @:optional var preference(default, null):String;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    A comma-separated list of index names to restrict the operation; use _all or empty string to perform the operation
    on all indices
   **/
  @:optional var index(default, null):Either<ArrayOrValue<String>, Bool>;
};

typedef UpdateParams = { >BaseParamsBody<Dynamic>,
  /**
    Explicit write consistency setting for the operation
   **/
  @:optional var consistency(default, null):Consistency;

  /**
    A comma-separated list of fields to return in the response
   **/
  @:optional var fields(default, null):Either<ArrayOrValue<String>, Bool>;

  /**
    The script language (default: groovy)
   **/
  @:optional var lang(default, null):String;

  /**
    ID of the parent document. Is is only used for routing and when for the upsert request
   **/
  @:optional var parent(default, null):String;

  /**
    Refresh the index after performing the operation
   **/
  @:optional var refresh(default, null):Bool;

  /**
    Specify how many times should the operation be retried when a conflict occurs (default: 0)
   **/
  @:optional var retryOnConflict(default, null):Float;

  /**
    Specific routing value
   **/
  @:optional var routing(default, null):String;

  /**
    The URL-encoded script definition (instead of using request body)
   **/
  @:optional var script(default, null):Dynamic;

  /**
    The id of a stored script
   **/
  @:optional var scriptId(default, null):Dynamic;

  /**
    True if the script referenced in script or script_id should be called to perform inserts - defaults to false
   **/
  @:optional var scriptedUpsert(default, null):Bool;

  /**
    Explicit operation timeout
   **/
  @:optional var timeout(default, null):Either<Date, Float>;

  /**
    Explicit timestamp for the document
   **/
  @:optional var timestamp(default, null):Either<Date, Float>;

  /**
    Expiration time for the document
   **/
  @:optional var ttl(default, null):Duration;

  /**
    Explicit version number for concurrency control
   **/
  @:optional var version(default, null):Float;

  /**
    Specific version type
   **/
  @:optional var versionType(default, null):String;

  /**
    Document ID
   **/
  @:optional var id(default, null):String;

  /**
    The name of the index
   **/
  @:optional var index(default, null):String;

  /**
    The type of the document
   **/
  @:optional var type(default, null):String;
};

abstract Duration(String) from String {
  @:extern inline public static function fromMinutes(min:Float):Duration {
    return '${min}m';
  }

  @:extern inline public static function fromSeconds(min:Float):Duration {
    return '${min}s';
  }
}

@:enum abstract SortDirection(String) to String {
  var Asc = "asc";
  var Desc = "desc";
}

typedef SearchResult<T> = {
  took: Int,
  timed_out:Bool,
  _shards: {
    total:Int,
    successful:Int,
    failed:Int
  },
  hits: {
    total:Int,
    max_score: Int,
    hits:Array<{
      _index:String,
      _type:String,
      _id:String,
      _score:Int,
      _ttl:Int,
      _source:T
    }>
  }
}

typedef MGetResult<T> = {
  docs: Array<{
    _index:String,
    _type:String,
    _id:String,
    _version:Int,
    found:Bool,
    _source:T
  }>
}

// TODO: incomplete
extern class Indices implements Dynamic {
  /**
    Create an index in Elasticsearch.
   **/
  public function create(params:{ >BaseParamsBody<Dynamic>, ?timeout:Either<Float, Date>, ?masterTimeout:Either<Float,
    Date>, ?updateAllTypes:Bool, index:String }, callback:Error->Dynamic->Void):Void;

  /**
    Return a boolean indicating whether given index exists.
   **/
  public function exists(params:{ >BaseParams, ?ignoreUnavailable:Bool, ?allowNoIndices:Bool, ?expandWildcards:ExpandWildcards,
    ?local:Bool, index:ArrayOrValue<String>, }, callback:Error->Dynamic->Void):Void;

  /**
    Create an index template that will automatically be applied to new indices created.

    The default method is PUT and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  public function putTemplate(params:{ >BaseParamsBody<Dynamic>, ?order:Float, ?create:Bool, ?timeout:Either<Float,
    Date>, ?masterTimeout:Either<Float, Date>, ?flatSettings:Bool, name:String }, callback:Error->Dynamic->Void):Void;

  /**
    The default method is HEAD and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  public function existsTemplate(params:{ >BaseParamsBody<Dynamic>, ?masterTimeout:Either<Date, Float>, ?local:Bool,
    name:String }, callback:Error->Dynamic->Void):Void;

  public function delete(params:{ >BaseParams, ?timeout:Either<Date, Float>, ?masterTimeout:Either<Date, Float>,
    index:ArrayOrValue<String> }, callback:Error->Dynamic->Void):Void;

  /**
    Retrieve statistics on different operations happening on an index.

    The default method is GET and the usual params and return values apply. See the elasticsearch docs for more about
    this method.
   **/
  public function stats(params:{ >BaseParams, ?completionFields:ArrayOrValue<String>, ?fielddataFields:ArrayOrValue<String>,
    ?fields:ArrayOrValue<String>, ?groups:ArrayOrValue<String>, ?human:Bool, ?leve:StatsLevel,
    ?types:ArrayOrValue<String>, index:ArrayOrValue<String>, ?metric:ArrayOrValue<String> },
    callback:Error->Dynamic->Void):Void;

  /**
    Delete a specific alias.
   **/
  public function deleteAlias(params:{ >BaseParams, ?timeout:Either<Date, Float>, ?masterTimeout:Either<Date, Float>,
    ?index:ArrayOrValue<String>, name:ArrayOrValue<String> }, callback:Error->Dynamic->Void):Void;

  /**
    Return a boolean indicating whether given alias exists.
   **/
  public function existsAlias(params:{ >BaseParams, ?ignoreUnavailable:Bool, ?allowNoIndices:Bool,
    ?expandWildcards:ExpandWildcards, ?local:Bool, ?index:ArrayOrValue<String>, name:ArrayOrValue<String> },
    callback:Error->Bool->Void):Void;

  /**
    Retrieve a specified alias.
   **/
  public function getAlias(params:{ >BaseParams, ?ignoreUnavailable:Bool, ?allowNoIndices:Bool,
    ?expandWildcards:ExpandWildcards, ?local:Bool, ?index:ArrayOrValue<String>, name:ArrayOrValue<String> },
    callback:Error->Dynamic->Void):Void;

  /**
    Retrieve specified aliases
   **/
  public function getAliases(params:{ >BaseParams, ?timeout:Either<Date, Float>, ?local:Bool,
    ?index:ArrayOrValue<String>, name:ArrayOrValue<String> }, callback:Error->Dynamic->Void):Void;

  /**
    Create an alias for a specific index/indices.
   **/
  public function putAlias(params:{ >BaseParamsBody<Dynamic>, ?timeout:Either<Date, Float>,
    ?masterTimeout:Either<Date, Float>, ?index:ArrayOrValue<String>, name:String },
    callback:Error->Dynamic->Void):Void;

  /**
    Update specified aliases.
    Perform an atomic alias swap, for a rotating index

    ```
    client.indices.updateAliases({
      body: {
        actions: [
          { remove: { index: 'logstash-2014.04', alias: 'logstash-current' } },
          { add:    { index: 'logstash-2014.05', alias: 'logstash-current' } }
        ]
      }
    }).then(function (response) {
      // ...
    }, errorHandler);
    ```
   **/
  public function updateAliases(params:{ >BaseParamsBody<AliasUpdateBody>, ?timeout:Either<Date, Float>,
    ?masterTimeout:Either<Date, Float> }, callback:Error->Dynamic->Void):Void;
}

@:enum abstract StatsLevel(String) from String {
  var Cluster = 'cluster';
  var Indices = 'indices';
  var Shareds = 'shards';
}

typedef AliasUpdateActionBase = {
  ?filter:Dynamic,
  ?search_routing: String,
  ?index_routing: String,
  ?index:String,
  ?indices:Array<String>,
  ?alias:String,
  ?aliases:Array<String>
}
abstract AliasUpdateAction(Dynamic)
  from { remove: AliasUpdateActionBase }
  from { add: AliasUpdateActionBase }
  from { remove_index: { index:String } }
{
}

typedef AliasUpdateBody = {
  actions:Array<AliasUpdateAction>
}

extern class Error extends js.Error {
  public var code(default, null):Null<Int>;
}
