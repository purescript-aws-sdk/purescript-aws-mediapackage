## Module AWS.MediaPackage.Requests

#### `createChannel`

``` purescript
createChannel :: forall eff. Service -> CreateChannelRequest -> Aff (exception :: EXCEPTION | eff) CreateChannelResponse
```

Creates a new Channel.

#### `createOriginEndpoint`

``` purescript
createOriginEndpoint :: forall eff. Service -> CreateOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) CreateOriginEndpointResponse
```

Creates a new OriginEndpoint record.

#### `deleteChannel`

``` purescript
deleteChannel :: forall eff. Service -> DeleteChannelRequest -> Aff (exception :: EXCEPTION | eff) DeleteChannelResponse
```

Deletes an existing Channel.

#### `deleteOriginEndpoint`

``` purescript
deleteOriginEndpoint :: forall eff. Service -> DeleteOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) DeleteOriginEndpointResponse
```

Deletes an existing OriginEndpoint.

#### `describeChannel`

``` purescript
describeChannel :: forall eff. Service -> DescribeChannelRequest -> Aff (exception :: EXCEPTION | eff) DescribeChannelResponse
```

Gets details about a Channel.

#### `describeOriginEndpoint`

``` purescript
describeOriginEndpoint :: forall eff. Service -> DescribeOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) DescribeOriginEndpointResponse
```

Gets details about an existing OriginEndpoint.

#### `listChannels`

``` purescript
listChannels :: forall eff. Service -> ListChannelsRequest -> Aff (exception :: EXCEPTION | eff) ListChannelsResponse
```

Returns a collection of Channels.

#### `listOriginEndpoints`

``` purescript
listOriginEndpoints :: forall eff. Service -> ListOriginEndpointsRequest -> Aff (exception :: EXCEPTION | eff) ListOriginEndpointsResponse
```

Returns a collection of OriginEndpoint records.

#### `rotateChannelCredentials`

``` purescript
rotateChannelCredentials :: forall eff. Service -> RotateChannelCredentialsRequest -> Aff (exception :: EXCEPTION | eff) RotateChannelCredentialsResponse
```

Changes the Channel ingest username and password.

#### `updateChannel`

``` purescript
updateChannel :: forall eff. Service -> UpdateChannelRequest -> Aff (exception :: EXCEPTION | eff) UpdateChannelResponse
```

Updates an existing Channel.

#### `updateOriginEndpoint`

``` purescript
updateOriginEndpoint :: forall eff. Service -> UpdateOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) UpdateOriginEndpointResponse
```

Updates an existing OriginEndpoint.


