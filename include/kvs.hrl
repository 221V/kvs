-ifndef(KVS_HRL).
-define(KVS_HRL, true).

-define(CONTAINER, id, top=undefined, entries_count=0).
-define(ITERATOR(Container, Guard), id, version, container=Container, feed_id, prev, next, feeds=[], guard=Guard, etc).
-define(ITERATOR(Container), ?ITERATOR(Container, false)).

-record(id_seq,    {thing, id}).
-record(container, {?CONTAINER}).
-record(iterator,  {?ITERATOR(undefined)}).
-record(interval,  {left,right,name}).
-record(log,       {?CONTAINER, name, acc}).
-record(operation, {?ITERATOR(log), body, name, status}).

-endif.
