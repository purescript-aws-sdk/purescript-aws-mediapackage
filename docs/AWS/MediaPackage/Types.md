## Module AWS.MediaPackage.Types

#### `options`

``` purescript
options :: Options
```

#### `AdMarkers`

``` purescript
newtype AdMarkers
  = AdMarkers String
```

##### Instances
``` purescript
Newtype AdMarkers _
Generic AdMarkers _
Show AdMarkers
Decode AdMarkers
Encode AdMarkers
```

#### `Channel`

``` purescript
newtype Channel
  = Channel { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }
```

A Channel resource configuration.

##### Instances
``` purescript
Newtype Channel _
Generic Channel _
Show Channel
Decode Channel
Encode Channel
```

#### `newChannel`

``` purescript
newChannel :: Channel
```

Constructs Channel from required parameters

#### `newChannel'`

``` purescript
newChannel' :: ({ "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) } -> { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }) -> Channel
```

Constructs Channel's fields from required parameters

#### `ChannelCreateParameters`

``` purescript
newtype ChannelCreateParameters
  = ChannelCreateParameters { "Description" :: Maybe (String), "Id" :: Maybe (String) }
```

Configuration parameters for a new Channel.

##### Instances
``` purescript
Newtype ChannelCreateParameters _
Generic ChannelCreateParameters _
Show ChannelCreateParameters
Decode ChannelCreateParameters
Encode ChannelCreateParameters
```

#### `newChannelCreateParameters`

``` purescript
newChannelCreateParameters :: ChannelCreateParameters
```

Constructs ChannelCreateParameters from required parameters

#### `newChannelCreateParameters'`

``` purescript
newChannelCreateParameters' :: ({ "Description" :: Maybe (String), "Id" :: Maybe (String) } -> { "Description" :: Maybe (String), "Id" :: Maybe (String) }) -> ChannelCreateParameters
```

Constructs ChannelCreateParameters's fields from required parameters

#### `ChannelList`

``` purescript
newtype ChannelList
  = ChannelList { "Channels" :: Maybe (ListOfChannel), "NextToken" :: Maybe (String) }
```

A collection of Channel records.

##### Instances
``` purescript
Newtype ChannelList _
Generic ChannelList _
Show ChannelList
Decode ChannelList
Encode ChannelList
```

#### `newChannelList`

``` purescript
newChannelList :: ChannelList
```

Constructs ChannelList from required parameters

#### `newChannelList'`

``` purescript
newChannelList' :: ({ "Channels" :: Maybe (ListOfChannel), "NextToken" :: Maybe (String) } -> { "Channels" :: Maybe (ListOfChannel), "NextToken" :: Maybe (String) }) -> ChannelList
```

Constructs ChannelList's fields from required parameters

#### `ChannelUpdateParameters`

``` purescript
newtype ChannelUpdateParameters
  = ChannelUpdateParameters { "Description" :: Maybe (String) }
```

Configuration parameters for updating an existing Channel.

##### Instances
``` purescript
Newtype ChannelUpdateParameters _
Generic ChannelUpdateParameters _
Show ChannelUpdateParameters
Decode ChannelUpdateParameters
Encode ChannelUpdateParameters
```

#### `newChannelUpdateParameters`

``` purescript
newChannelUpdateParameters :: ChannelUpdateParameters
```

Constructs ChannelUpdateParameters from required parameters

#### `newChannelUpdateParameters'`

``` purescript
newChannelUpdateParameters' :: ({ "Description" :: Maybe (String) } -> { "Description" :: Maybe (String) }) -> ChannelUpdateParameters
```

Constructs ChannelUpdateParameters's fields from required parameters

#### `CreateChannelRequest`

``` purescript
newtype CreateChannelRequest
  = CreateChannelRequest { "Description" :: Maybe (String), "Id" :: String }
```

A new Channel configuration.

##### Instances
``` purescript
Newtype CreateChannelRequest _
Generic CreateChannelRequest _
Show CreateChannelRequest
Decode CreateChannelRequest
Encode CreateChannelRequest
```

#### `newCreateChannelRequest`

``` purescript
newCreateChannelRequest :: String -> CreateChannelRequest
```

Constructs CreateChannelRequest from required parameters

#### `newCreateChannelRequest'`

``` purescript
newCreateChannelRequest' :: String -> ({ "Description" :: Maybe (String), "Id" :: String } -> { "Description" :: Maybe (String), "Id" :: String }) -> CreateChannelRequest
```

Constructs CreateChannelRequest's fields from required parameters

#### `CreateChannelResponse`

``` purescript
newtype CreateChannelResponse
  = CreateChannelResponse { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateChannelResponse _
Generic CreateChannelResponse _
Show CreateChannelResponse
Decode CreateChannelResponse
Encode CreateChannelResponse
```

#### `newCreateChannelResponse`

``` purescript
newCreateChannelResponse :: CreateChannelResponse
```

Constructs CreateChannelResponse from required parameters

#### `newCreateChannelResponse'`

``` purescript
newCreateChannelResponse' :: ({ "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) } -> { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }) -> CreateChannelResponse
```

Constructs CreateChannelResponse's fields from required parameters

#### `CreateOriginEndpointRequest`

``` purescript
newtype CreateOriginEndpointRequest
  = CreateOriginEndpointRequest { "ChannelId" :: String, "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: String, "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }
```

Configuration parameters used to create a new OriginEndpoint.

##### Instances
``` purescript
Newtype CreateOriginEndpointRequest _
Generic CreateOriginEndpointRequest _
Show CreateOriginEndpointRequest
Decode CreateOriginEndpointRequest
Encode CreateOriginEndpointRequest
```

#### `newCreateOriginEndpointRequest`

``` purescript
newCreateOriginEndpointRequest :: String -> String -> CreateOriginEndpointRequest
```

Constructs CreateOriginEndpointRequest from required parameters

#### `newCreateOriginEndpointRequest'`

``` purescript
newCreateOriginEndpointRequest' :: String -> String -> ({ "ChannelId" :: String, "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: String, "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) } -> { "ChannelId" :: String, "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: String, "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }) -> CreateOriginEndpointRequest
```

Constructs CreateOriginEndpointRequest's fields from required parameters

#### `CreateOriginEndpointResponse`

``` purescript
newtype CreateOriginEndpointResponse
  = CreateOriginEndpointResponse { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }
```

##### Instances
``` purescript
Newtype CreateOriginEndpointResponse _
Generic CreateOriginEndpointResponse _
Show CreateOriginEndpointResponse
Decode CreateOriginEndpointResponse
Encode CreateOriginEndpointResponse
```

#### `newCreateOriginEndpointResponse`

``` purescript
newCreateOriginEndpointResponse :: CreateOriginEndpointResponse
```

Constructs CreateOriginEndpointResponse from required parameters

#### `newCreateOriginEndpointResponse'`

``` purescript
newCreateOriginEndpointResponse' :: ({ "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) } -> { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }) -> CreateOriginEndpointResponse
```

Constructs CreateOriginEndpointResponse's fields from required parameters

#### `DashEncryption`

``` purescript
newtype DashEncryption
  = DashEncryption { "KeyRotationIntervalSeconds" :: Maybe (Int), "SpekeKeyProvider" :: SpekeKeyProvider }
```

A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.

##### Instances
``` purescript
Newtype DashEncryption _
Generic DashEncryption _
Show DashEncryption
Decode DashEncryption
Encode DashEncryption
```

#### `newDashEncryption`

``` purescript
newDashEncryption :: SpekeKeyProvider -> DashEncryption
```

Constructs DashEncryption from required parameters

#### `newDashEncryption'`

``` purescript
newDashEncryption' :: SpekeKeyProvider -> ({ "KeyRotationIntervalSeconds" :: Maybe (Int), "SpekeKeyProvider" :: SpekeKeyProvider } -> { "KeyRotationIntervalSeconds" :: Maybe (Int), "SpekeKeyProvider" :: SpekeKeyProvider }) -> DashEncryption
```

Constructs DashEncryption's fields from required parameters

#### `DashPackage`

``` purescript
newtype DashPackage
  = DashPackage { "Encryption" :: Maybe (DashEncryption), "ManifestWindowSeconds" :: Maybe (Int), "MinBufferTimeSeconds" :: Maybe (Int), "MinUpdatePeriodSeconds" :: Maybe (Int), "Profile" :: Maybe (Profile), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection), "SuggestedPresentationDelaySeconds" :: Maybe (Int) }
```

A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.

##### Instances
``` purescript
Newtype DashPackage _
Generic DashPackage _
Show DashPackage
Decode DashPackage
Encode DashPackage
```

#### `newDashPackage`

``` purescript
newDashPackage :: DashPackage
```

Constructs DashPackage from required parameters

#### `newDashPackage'`

``` purescript
newDashPackage' :: ({ "Encryption" :: Maybe (DashEncryption), "ManifestWindowSeconds" :: Maybe (Int), "MinBufferTimeSeconds" :: Maybe (Int), "MinUpdatePeriodSeconds" :: Maybe (Int), "Profile" :: Maybe (Profile), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection), "SuggestedPresentationDelaySeconds" :: Maybe (Int) } -> { "Encryption" :: Maybe (DashEncryption), "ManifestWindowSeconds" :: Maybe (Int), "MinBufferTimeSeconds" :: Maybe (Int), "MinUpdatePeriodSeconds" :: Maybe (Int), "Profile" :: Maybe (Profile), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection), "SuggestedPresentationDelaySeconds" :: Maybe (Int) }) -> DashPackage
```

Constructs DashPackage's fields from required parameters

#### `DeleteChannelRequest`

``` purescript
newtype DeleteChannelRequest
  = DeleteChannelRequest { "Id" :: String }
```

##### Instances
``` purescript
Newtype DeleteChannelRequest _
Generic DeleteChannelRequest _
Show DeleteChannelRequest
Decode DeleteChannelRequest
Encode DeleteChannelRequest
```

#### `newDeleteChannelRequest`

``` purescript
newDeleteChannelRequest :: String -> DeleteChannelRequest
```

Constructs DeleteChannelRequest from required parameters

#### `newDeleteChannelRequest'`

``` purescript
newDeleteChannelRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> DeleteChannelRequest
```

Constructs DeleteChannelRequest's fields from required parameters

#### `DeleteChannelResponse`

``` purescript
newtype DeleteChannelResponse
  = DeleteChannelResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteChannelResponse _
Generic DeleteChannelResponse _
Show DeleteChannelResponse
Decode DeleteChannelResponse
Encode DeleteChannelResponse
```

#### `DeleteOriginEndpointRequest`

``` purescript
newtype DeleteOriginEndpointRequest
  = DeleteOriginEndpointRequest { "Id" :: String }
```

##### Instances
``` purescript
Newtype DeleteOriginEndpointRequest _
Generic DeleteOriginEndpointRequest _
Show DeleteOriginEndpointRequest
Decode DeleteOriginEndpointRequest
Encode DeleteOriginEndpointRequest
```

#### `newDeleteOriginEndpointRequest`

``` purescript
newDeleteOriginEndpointRequest :: String -> DeleteOriginEndpointRequest
```

Constructs DeleteOriginEndpointRequest from required parameters

#### `newDeleteOriginEndpointRequest'`

``` purescript
newDeleteOriginEndpointRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> DeleteOriginEndpointRequest
```

Constructs DeleteOriginEndpointRequest's fields from required parameters

#### `DeleteOriginEndpointResponse`

``` purescript
newtype DeleteOriginEndpointResponse
  = DeleteOriginEndpointResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteOriginEndpointResponse _
Generic DeleteOriginEndpointResponse _
Show DeleteOriginEndpointResponse
Decode DeleteOriginEndpointResponse
Encode DeleteOriginEndpointResponse
```

#### `DescribeChannelRequest`

``` purescript
newtype DescribeChannelRequest
  = DescribeChannelRequest { "Id" :: String }
```

##### Instances
``` purescript
Newtype DescribeChannelRequest _
Generic DescribeChannelRequest _
Show DescribeChannelRequest
Decode DescribeChannelRequest
Encode DescribeChannelRequest
```

#### `newDescribeChannelRequest`

``` purescript
newDescribeChannelRequest :: String -> DescribeChannelRequest
```

Constructs DescribeChannelRequest from required parameters

#### `newDescribeChannelRequest'`

``` purescript
newDescribeChannelRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> DescribeChannelRequest
```

Constructs DescribeChannelRequest's fields from required parameters

#### `DescribeChannelResponse`

``` purescript
newtype DescribeChannelResponse
  = DescribeChannelResponse { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype DescribeChannelResponse _
Generic DescribeChannelResponse _
Show DescribeChannelResponse
Decode DescribeChannelResponse
Encode DescribeChannelResponse
```

#### `newDescribeChannelResponse`

``` purescript
newDescribeChannelResponse :: DescribeChannelResponse
```

Constructs DescribeChannelResponse from required parameters

#### `newDescribeChannelResponse'`

``` purescript
newDescribeChannelResponse' :: ({ "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) } -> { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }) -> DescribeChannelResponse
```

Constructs DescribeChannelResponse's fields from required parameters

#### `DescribeOriginEndpointRequest`

``` purescript
newtype DescribeOriginEndpointRequest
  = DescribeOriginEndpointRequest { "Id" :: String }
```

##### Instances
``` purescript
Newtype DescribeOriginEndpointRequest _
Generic DescribeOriginEndpointRequest _
Show DescribeOriginEndpointRequest
Decode DescribeOriginEndpointRequest
Encode DescribeOriginEndpointRequest
```

#### `newDescribeOriginEndpointRequest`

``` purescript
newDescribeOriginEndpointRequest :: String -> DescribeOriginEndpointRequest
```

Constructs DescribeOriginEndpointRequest from required parameters

#### `newDescribeOriginEndpointRequest'`

``` purescript
newDescribeOriginEndpointRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> DescribeOriginEndpointRequest
```

Constructs DescribeOriginEndpointRequest's fields from required parameters

#### `DescribeOriginEndpointResponse`

``` purescript
newtype DescribeOriginEndpointResponse
  = DescribeOriginEndpointResponse { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }
```

##### Instances
``` purescript
Newtype DescribeOriginEndpointResponse _
Generic DescribeOriginEndpointResponse _
Show DescribeOriginEndpointResponse
Decode DescribeOriginEndpointResponse
Encode DescribeOriginEndpointResponse
```

#### `newDescribeOriginEndpointResponse`

``` purescript
newDescribeOriginEndpointResponse :: DescribeOriginEndpointResponse
```

Constructs DescribeOriginEndpointResponse from required parameters

#### `newDescribeOriginEndpointResponse'`

``` purescript
newDescribeOriginEndpointResponse' :: ({ "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) } -> { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }) -> DescribeOriginEndpointResponse
```

Constructs DescribeOriginEndpointResponse's fields from required parameters

#### `EncryptionMethod`

``` purescript
newtype EncryptionMethod
  = EncryptionMethod String
```

##### Instances
``` purescript
Newtype EncryptionMethod _
Generic EncryptionMethod _
Show EncryptionMethod
Decode EncryptionMethod
Encode EncryptionMethod
```

#### `ForbiddenException`

``` purescript
newtype ForbiddenException
  = ForbiddenException { "Message" :: Maybe (String) }
```

The client is not authorized to access the requested resource.

##### Instances
``` purescript
Newtype ForbiddenException _
Generic ForbiddenException _
Show ForbiddenException
Decode ForbiddenException
Encode ForbiddenException
```

#### `newForbiddenException`

``` purescript
newForbiddenException :: ForbiddenException
```

Constructs ForbiddenException from required parameters

#### `newForbiddenException'`

``` purescript
newForbiddenException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> ForbiddenException
```

Constructs ForbiddenException's fields from required parameters

#### `HlsEncryption`

``` purescript
newtype HlsEncryption
  = HlsEncryption { "ConstantInitializationVector" :: Maybe (String), "EncryptionMethod" :: Maybe (EncryptionMethod), "KeyRotationIntervalSeconds" :: Maybe (Int), "RepeatExtXKey" :: Maybe (Boolean), "SpekeKeyProvider" :: SpekeKeyProvider }
```

An HTTP Live Streaming (HLS) encryption configuration.

##### Instances
``` purescript
Newtype HlsEncryption _
Generic HlsEncryption _
Show HlsEncryption
Decode HlsEncryption
Encode HlsEncryption
```

#### `newHlsEncryption`

``` purescript
newHlsEncryption :: SpekeKeyProvider -> HlsEncryption
```

Constructs HlsEncryption from required parameters

#### `newHlsEncryption'`

``` purescript
newHlsEncryption' :: SpekeKeyProvider -> ({ "ConstantInitializationVector" :: Maybe (String), "EncryptionMethod" :: Maybe (EncryptionMethod), "KeyRotationIntervalSeconds" :: Maybe (Int), "RepeatExtXKey" :: Maybe (Boolean), "SpekeKeyProvider" :: SpekeKeyProvider } -> { "ConstantInitializationVector" :: Maybe (String), "EncryptionMethod" :: Maybe (EncryptionMethod), "KeyRotationIntervalSeconds" :: Maybe (Int), "RepeatExtXKey" :: Maybe (Boolean), "SpekeKeyProvider" :: SpekeKeyProvider }) -> HlsEncryption
```

Constructs HlsEncryption's fields from required parameters

#### `HlsIngest`

``` purescript
newtype HlsIngest
  = HlsIngest { "IngestEndpoints" :: Maybe (ListOfIngestEndpoint) }
```

An HTTP Live Streaming (HLS) ingest resource configuration.

##### Instances
``` purescript
Newtype HlsIngest _
Generic HlsIngest _
Show HlsIngest
Decode HlsIngest
Encode HlsIngest
```

#### `newHlsIngest`

``` purescript
newHlsIngest :: HlsIngest
```

Constructs HlsIngest from required parameters

#### `newHlsIngest'`

``` purescript
newHlsIngest' :: ({ "IngestEndpoints" :: Maybe (ListOfIngestEndpoint) } -> { "IngestEndpoints" :: Maybe (ListOfIngestEndpoint) }) -> HlsIngest
```

Constructs HlsIngest's fields from required parameters

#### `HlsPackage`

``` purescript
newtype HlsPackage
  = HlsPackage { "AdMarkers" :: Maybe (AdMarkers), "Encryption" :: Maybe (HlsEncryption), "IncludeIframeOnlyStream" :: Maybe (Boolean), "PlaylistType" :: Maybe (PlaylistType), "PlaylistWindowSeconds" :: Maybe (Int), "ProgramDateTimeIntervalSeconds" :: Maybe (Int), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection), "UseAudioRenditionGroup" :: Maybe (Boolean) }
```

An HTTP Live Streaming (HLS) packaging configuration.

##### Instances
``` purescript
Newtype HlsPackage _
Generic HlsPackage _
Show HlsPackage
Decode HlsPackage
Encode HlsPackage
```

#### `newHlsPackage`

``` purescript
newHlsPackage :: HlsPackage
```

Constructs HlsPackage from required parameters

#### `newHlsPackage'`

``` purescript
newHlsPackage' :: ({ "AdMarkers" :: Maybe (AdMarkers), "Encryption" :: Maybe (HlsEncryption), "IncludeIframeOnlyStream" :: Maybe (Boolean), "PlaylistType" :: Maybe (PlaylistType), "PlaylistWindowSeconds" :: Maybe (Int), "ProgramDateTimeIntervalSeconds" :: Maybe (Int), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection), "UseAudioRenditionGroup" :: Maybe (Boolean) } -> { "AdMarkers" :: Maybe (AdMarkers), "Encryption" :: Maybe (HlsEncryption), "IncludeIframeOnlyStream" :: Maybe (Boolean), "PlaylistType" :: Maybe (PlaylistType), "PlaylistWindowSeconds" :: Maybe (Int), "ProgramDateTimeIntervalSeconds" :: Maybe (Int), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection), "UseAudioRenditionGroup" :: Maybe (Boolean) }) -> HlsPackage
```

Constructs HlsPackage's fields from required parameters

#### `IngestEndpoint`

``` purescript
newtype IngestEndpoint
  = IngestEndpoint { "Password" :: Maybe (String), "Url" :: Maybe (String), "Username" :: Maybe (String) }
```

An endpoint for ingesting source content for a Channel.

##### Instances
``` purescript
Newtype IngestEndpoint _
Generic IngestEndpoint _
Show IngestEndpoint
Decode IngestEndpoint
Encode IngestEndpoint
```

#### `newIngestEndpoint`

``` purescript
newIngestEndpoint :: IngestEndpoint
```

Constructs IngestEndpoint from required parameters

#### `newIngestEndpoint'`

``` purescript
newIngestEndpoint' :: ({ "Password" :: Maybe (String), "Url" :: Maybe (String), "Username" :: Maybe (String) } -> { "Password" :: Maybe (String), "Url" :: Maybe (String), "Username" :: Maybe (String) }) -> IngestEndpoint
```

Constructs IngestEndpoint's fields from required parameters

#### `InternalServerErrorException`

``` purescript
newtype InternalServerErrorException
  = InternalServerErrorException { "Message" :: Maybe (String) }
```

An unexpected error occurred.

##### Instances
``` purescript
Newtype InternalServerErrorException _
Generic InternalServerErrorException _
Show InternalServerErrorException
Decode InternalServerErrorException
Encode InternalServerErrorException
```

#### `newInternalServerErrorException`

``` purescript
newInternalServerErrorException :: InternalServerErrorException
```

Constructs InternalServerErrorException from required parameters

#### `newInternalServerErrorException'`

``` purescript
newInternalServerErrorException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> InternalServerErrorException
```

Constructs InternalServerErrorException's fields from required parameters

#### `ListChannelsRequest`

``` purescript
newtype ListChannelsRequest
  = ListChannelsRequest { "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListChannelsRequest _
Generic ListChannelsRequest _
Show ListChannelsRequest
Decode ListChannelsRequest
Encode ListChannelsRequest
```

#### `newListChannelsRequest`

``` purescript
newListChannelsRequest :: ListChannelsRequest
```

Constructs ListChannelsRequest from required parameters

#### `newListChannelsRequest'`

``` purescript
newListChannelsRequest' :: ({ "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) } -> { "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }) -> ListChannelsRequest
```

Constructs ListChannelsRequest's fields from required parameters

#### `ListChannelsResponse`

``` purescript
newtype ListChannelsResponse
  = ListChannelsResponse { "Channels" :: Maybe (ListOfChannel), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListChannelsResponse _
Generic ListChannelsResponse _
Show ListChannelsResponse
Decode ListChannelsResponse
Encode ListChannelsResponse
```

#### `newListChannelsResponse`

``` purescript
newListChannelsResponse :: ListChannelsResponse
```

Constructs ListChannelsResponse from required parameters

#### `newListChannelsResponse'`

``` purescript
newListChannelsResponse' :: ({ "Channels" :: Maybe (ListOfChannel), "NextToken" :: Maybe (String) } -> { "Channels" :: Maybe (ListOfChannel), "NextToken" :: Maybe (String) }) -> ListChannelsResponse
```

Constructs ListChannelsResponse's fields from required parameters

#### `ListOfChannel`

``` purescript
newtype ListOfChannel
  = ListOfChannel (Array Channel)
```

##### Instances
``` purescript
Newtype ListOfChannel _
Generic ListOfChannel _
Show ListOfChannel
Decode ListOfChannel
Encode ListOfChannel
```

#### `ListOfIngestEndpoint`

``` purescript
newtype ListOfIngestEndpoint
  = ListOfIngestEndpoint (Array IngestEndpoint)
```

##### Instances
``` purescript
Newtype ListOfIngestEndpoint _
Generic ListOfIngestEndpoint _
Show ListOfIngestEndpoint
Decode ListOfIngestEndpoint
Encode ListOfIngestEndpoint
```

#### `ListOfOriginEndpoint`

``` purescript
newtype ListOfOriginEndpoint
  = ListOfOriginEndpoint (Array OriginEndpoint)
```

##### Instances
``` purescript
Newtype ListOfOriginEndpoint _
Generic ListOfOriginEndpoint _
Show ListOfOriginEndpoint
Decode ListOfOriginEndpoint
Encode ListOfOriginEndpoint
```

#### `ListOf__string`

``` purescript
newtype ListOf__string
  = ListOf__string (Array String)
```

##### Instances
``` purescript
Newtype ListOf__string _
Generic ListOf__string _
Show ListOf__string
Decode ListOf__string
Encode ListOf__string
```

#### `ListOriginEndpointsRequest`

``` purescript
newtype ListOriginEndpointsRequest
  = ListOriginEndpointsRequest { "ChannelId" :: Maybe (String), "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListOriginEndpointsRequest _
Generic ListOriginEndpointsRequest _
Show ListOriginEndpointsRequest
Decode ListOriginEndpointsRequest
Encode ListOriginEndpointsRequest
```

#### `newListOriginEndpointsRequest`

``` purescript
newListOriginEndpointsRequest :: ListOriginEndpointsRequest
```

Constructs ListOriginEndpointsRequest from required parameters

#### `newListOriginEndpointsRequest'`

``` purescript
newListOriginEndpointsRequest' :: ({ "ChannelId" :: Maybe (String), "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) } -> { "ChannelId" :: Maybe (String), "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }) -> ListOriginEndpointsRequest
```

Constructs ListOriginEndpointsRequest's fields from required parameters

#### `ListOriginEndpointsResponse`

``` purescript
newtype ListOriginEndpointsResponse
  = ListOriginEndpointsResponse { "NextToken" :: Maybe (String), "OriginEndpoints" :: Maybe (ListOfOriginEndpoint) }
```

##### Instances
``` purescript
Newtype ListOriginEndpointsResponse _
Generic ListOriginEndpointsResponse _
Show ListOriginEndpointsResponse
Decode ListOriginEndpointsResponse
Encode ListOriginEndpointsResponse
```

#### `newListOriginEndpointsResponse`

``` purescript
newListOriginEndpointsResponse :: ListOriginEndpointsResponse
```

Constructs ListOriginEndpointsResponse from required parameters

#### `newListOriginEndpointsResponse'`

``` purescript
newListOriginEndpointsResponse' :: ({ "NextToken" :: Maybe (String), "OriginEndpoints" :: Maybe (ListOfOriginEndpoint) } -> { "NextToken" :: Maybe (String), "OriginEndpoints" :: Maybe (ListOfOriginEndpoint) }) -> ListOriginEndpointsResponse
```

Constructs ListOriginEndpointsResponse's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MssEncryption`

``` purescript
newtype MssEncryption
  = MssEncryption { "SpekeKeyProvider" :: SpekeKeyProvider }
```

A Microsoft Smooth Streaming (MSS) encryption configuration.

##### Instances
``` purescript
Newtype MssEncryption _
Generic MssEncryption _
Show MssEncryption
Decode MssEncryption
Encode MssEncryption
```

#### `newMssEncryption`

``` purescript
newMssEncryption :: SpekeKeyProvider -> MssEncryption
```

Constructs MssEncryption from required parameters

#### `newMssEncryption'`

``` purescript
newMssEncryption' :: SpekeKeyProvider -> ({ "SpekeKeyProvider" :: SpekeKeyProvider } -> { "SpekeKeyProvider" :: SpekeKeyProvider }) -> MssEncryption
```

Constructs MssEncryption's fields from required parameters

#### `MssPackage`

``` purescript
newtype MssPackage
  = MssPackage { "Encryption" :: Maybe (MssEncryption), "ManifestWindowSeconds" :: Maybe (Int), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection) }
```

A Microsoft Smooth Streaming (MSS) packaging configuration.

##### Instances
``` purescript
Newtype MssPackage _
Generic MssPackage _
Show MssPackage
Decode MssPackage
Encode MssPackage
```

#### `newMssPackage`

``` purescript
newMssPackage :: MssPackage
```

Constructs MssPackage from required parameters

#### `newMssPackage'`

``` purescript
newMssPackage' :: ({ "Encryption" :: Maybe (MssEncryption), "ManifestWindowSeconds" :: Maybe (Int), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection) } -> { "Encryption" :: Maybe (MssEncryption), "ManifestWindowSeconds" :: Maybe (Int), "SegmentDurationSeconds" :: Maybe (Int), "StreamSelection" :: Maybe (StreamSelection) }) -> MssPackage
```

Constructs MssPackage's fields from required parameters

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "Message" :: Maybe (String) }
```

The requested resource does not exist.

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `OriginEndpoint`

``` purescript
newtype OriginEndpoint
  = OriginEndpoint { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }
```

An OriginEndpoint resource configuration.

##### Instances
``` purescript
Newtype OriginEndpoint _
Generic OriginEndpoint _
Show OriginEndpoint
Decode OriginEndpoint
Encode OriginEndpoint
```

#### `newOriginEndpoint`

``` purescript
newOriginEndpoint :: OriginEndpoint
```

Constructs OriginEndpoint from required parameters

#### `newOriginEndpoint'`

``` purescript
newOriginEndpoint' :: ({ "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) } -> { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }) -> OriginEndpoint
```

Constructs OriginEndpoint's fields from required parameters

#### `OriginEndpointCreateParameters`

``` purescript
newtype OriginEndpointCreateParameters
  = OriginEndpointCreateParameters { "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }
```

Configuration parameters for a new OriginEndpoint.

##### Instances
``` purescript
Newtype OriginEndpointCreateParameters _
Generic OriginEndpointCreateParameters _
Show OriginEndpointCreateParameters
Decode OriginEndpointCreateParameters
Encode OriginEndpointCreateParameters
```

#### `newOriginEndpointCreateParameters`

``` purescript
newOriginEndpointCreateParameters :: OriginEndpointCreateParameters
```

Constructs OriginEndpointCreateParameters from required parameters

#### `newOriginEndpointCreateParameters'`

``` purescript
newOriginEndpointCreateParameters' :: ({ "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) } -> { "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }) -> OriginEndpointCreateParameters
```

Constructs OriginEndpointCreateParameters's fields from required parameters

#### `OriginEndpointList`

``` purescript
newtype OriginEndpointList
  = OriginEndpointList { "NextToken" :: Maybe (String), "OriginEndpoints" :: Maybe (ListOfOriginEndpoint) }
```

A collection of OriginEndpoint records.

##### Instances
``` purescript
Newtype OriginEndpointList _
Generic OriginEndpointList _
Show OriginEndpointList
Decode OriginEndpointList
Encode OriginEndpointList
```

#### `newOriginEndpointList`

``` purescript
newOriginEndpointList :: OriginEndpointList
```

Constructs OriginEndpointList from required parameters

#### `newOriginEndpointList'`

``` purescript
newOriginEndpointList' :: ({ "NextToken" :: Maybe (String), "OriginEndpoints" :: Maybe (ListOfOriginEndpoint) } -> { "NextToken" :: Maybe (String), "OriginEndpoints" :: Maybe (ListOfOriginEndpoint) }) -> OriginEndpointList
```

Constructs OriginEndpointList's fields from required parameters

#### `OriginEndpointUpdateParameters`

``` purescript
newtype OriginEndpointUpdateParameters
  = OriginEndpointUpdateParameters { "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }
```

Configuration parameters for updating an existing OriginEndpoint.

##### Instances
``` purescript
Newtype OriginEndpointUpdateParameters _
Generic OriginEndpointUpdateParameters _
Show OriginEndpointUpdateParameters
Decode OriginEndpointUpdateParameters
Encode OriginEndpointUpdateParameters
```

#### `newOriginEndpointUpdateParameters`

``` purescript
newOriginEndpointUpdateParameters :: OriginEndpointUpdateParameters
```

Constructs OriginEndpointUpdateParameters from required parameters

#### `newOriginEndpointUpdateParameters'`

``` purescript
newOriginEndpointUpdateParameters' :: ({ "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) } -> { "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }) -> OriginEndpointUpdateParameters
```

Constructs OriginEndpointUpdateParameters's fields from required parameters

#### `PlaylistType`

``` purescript
newtype PlaylistType
  = PlaylistType String
```

##### Instances
``` purescript
Newtype PlaylistType _
Generic PlaylistType _
Show PlaylistType
Decode PlaylistType
Encode PlaylistType
```

#### `Profile`

``` purescript
newtype Profile
  = Profile String
```

##### Instances
``` purescript
Newtype Profile _
Generic Profile _
Show Profile
Decode Profile
Encode Profile
```

#### `RotateChannelCredentialsRequest`

``` purescript
newtype RotateChannelCredentialsRequest
  = RotateChannelCredentialsRequest { "Id" :: String }
```

##### Instances
``` purescript
Newtype RotateChannelCredentialsRequest _
Generic RotateChannelCredentialsRequest _
Show RotateChannelCredentialsRequest
Decode RotateChannelCredentialsRequest
Encode RotateChannelCredentialsRequest
```

#### `newRotateChannelCredentialsRequest`

``` purescript
newRotateChannelCredentialsRequest :: String -> RotateChannelCredentialsRequest
```

Constructs RotateChannelCredentialsRequest from required parameters

#### `newRotateChannelCredentialsRequest'`

``` purescript
newRotateChannelCredentialsRequest' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> RotateChannelCredentialsRequest
```

Constructs RotateChannelCredentialsRequest's fields from required parameters

#### `RotateChannelCredentialsResponse`

``` purescript
newtype RotateChannelCredentialsResponse
  = RotateChannelCredentialsResponse { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype RotateChannelCredentialsResponse _
Generic RotateChannelCredentialsResponse _
Show RotateChannelCredentialsResponse
Decode RotateChannelCredentialsResponse
Encode RotateChannelCredentialsResponse
```

#### `newRotateChannelCredentialsResponse`

``` purescript
newRotateChannelCredentialsResponse :: RotateChannelCredentialsResponse
```

Constructs RotateChannelCredentialsResponse from required parameters

#### `newRotateChannelCredentialsResponse'`

``` purescript
newRotateChannelCredentialsResponse' :: ({ "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) } -> { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }) -> RotateChannelCredentialsResponse
```

Constructs RotateChannelCredentialsResponse's fields from required parameters

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { "Message" :: Maybe (String) }
```

An unexpected error occurred.

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `SpekeKeyProvider`

``` purescript
newtype SpekeKeyProvider
  = SpekeKeyProvider { "ResourceId" :: String, "RoleArn" :: String, "SystemIds" :: ListOf__string, "Url" :: String }
```

A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.

##### Instances
``` purescript
Newtype SpekeKeyProvider _
Generic SpekeKeyProvider _
Show SpekeKeyProvider
Decode SpekeKeyProvider
Encode SpekeKeyProvider
```

#### `newSpekeKeyProvider`

``` purescript
newSpekeKeyProvider :: String -> String -> ListOf__string -> String -> SpekeKeyProvider
```

Constructs SpekeKeyProvider from required parameters

#### `newSpekeKeyProvider'`

``` purescript
newSpekeKeyProvider' :: String -> String -> ListOf__string -> String -> ({ "ResourceId" :: String, "RoleArn" :: String, "SystemIds" :: ListOf__string, "Url" :: String } -> { "ResourceId" :: String, "RoleArn" :: String, "SystemIds" :: ListOf__string, "Url" :: String }) -> SpekeKeyProvider
```

Constructs SpekeKeyProvider's fields from required parameters

#### `StreamOrder`

``` purescript
newtype StreamOrder
  = StreamOrder String
```

##### Instances
``` purescript
Newtype StreamOrder _
Generic StreamOrder _
Show StreamOrder
Decode StreamOrder
Encode StreamOrder
```

#### `StreamSelection`

``` purescript
newtype StreamSelection
  = StreamSelection { "MaxVideoBitsPerSecond" :: Maybe (Int), "MinVideoBitsPerSecond" :: Maybe (Int), "StreamOrder" :: Maybe (StreamOrder) }
```

A StreamSelection configuration.

##### Instances
``` purescript
Newtype StreamSelection _
Generic StreamSelection _
Show StreamSelection
Decode StreamSelection
Encode StreamSelection
```

#### `newStreamSelection`

``` purescript
newStreamSelection :: StreamSelection
```

Constructs StreamSelection from required parameters

#### `newStreamSelection'`

``` purescript
newStreamSelection' :: ({ "MaxVideoBitsPerSecond" :: Maybe (Int), "MinVideoBitsPerSecond" :: Maybe (Int), "StreamOrder" :: Maybe (StreamOrder) } -> { "MaxVideoBitsPerSecond" :: Maybe (Int), "MinVideoBitsPerSecond" :: Maybe (Int), "StreamOrder" :: Maybe (StreamOrder) }) -> StreamSelection
```

Constructs StreamSelection's fields from required parameters

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "Message" :: Maybe (String) }
```

The client has exceeded their resource or throttling limits.

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UnprocessableEntityException`

``` purescript
newtype UnprocessableEntityException
  = UnprocessableEntityException { "Message" :: Maybe (String) }
```

The parameters sent in the request are not valid.

##### Instances
``` purescript
Newtype UnprocessableEntityException _
Generic UnprocessableEntityException _
Show UnprocessableEntityException
Decode UnprocessableEntityException
Encode UnprocessableEntityException
```

#### `newUnprocessableEntityException`

``` purescript
newUnprocessableEntityException :: UnprocessableEntityException
```

Constructs UnprocessableEntityException from required parameters

#### `newUnprocessableEntityException'`

``` purescript
newUnprocessableEntityException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> UnprocessableEntityException
```

Constructs UnprocessableEntityException's fields from required parameters

#### `UpdateChannelRequest`

``` purescript
newtype UpdateChannelRequest
  = UpdateChannelRequest { "Description" :: Maybe (String), "Id" :: String }
```

Configuration parameters used to update the Channel.

##### Instances
``` purescript
Newtype UpdateChannelRequest _
Generic UpdateChannelRequest _
Show UpdateChannelRequest
Decode UpdateChannelRequest
Encode UpdateChannelRequest
```

#### `newUpdateChannelRequest`

``` purescript
newUpdateChannelRequest :: String -> UpdateChannelRequest
```

Constructs UpdateChannelRequest from required parameters

#### `newUpdateChannelRequest'`

``` purescript
newUpdateChannelRequest' :: String -> ({ "Description" :: Maybe (String), "Id" :: String } -> { "Description" :: Maybe (String), "Id" :: String }) -> UpdateChannelRequest
```

Constructs UpdateChannelRequest's fields from required parameters

#### `UpdateChannelResponse`

``` purescript
newtype UpdateChannelResponse
  = UpdateChannelResponse { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype UpdateChannelResponse _
Generic UpdateChannelResponse _
Show UpdateChannelResponse
Decode UpdateChannelResponse
Encode UpdateChannelResponse
```

#### `newUpdateChannelResponse`

``` purescript
newUpdateChannelResponse :: UpdateChannelResponse
```

Constructs UpdateChannelResponse from required parameters

#### `newUpdateChannelResponse'`

``` purescript
newUpdateChannelResponse' :: ({ "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) } -> { "Arn" :: Maybe (String), "Description" :: Maybe (String), "HlsIngest" :: Maybe (HlsIngest), "Id" :: Maybe (String) }) -> UpdateChannelResponse
```

Constructs UpdateChannelResponse's fields from required parameters

#### `UpdateOriginEndpointRequest`

``` purescript
newtype UpdateOriginEndpointRequest
  = UpdateOriginEndpointRequest { "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: String, "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }
```

Configuration parameters used to update an existing OriginEndpoint.

##### Instances
``` purescript
Newtype UpdateOriginEndpointRequest _
Generic UpdateOriginEndpointRequest _
Show UpdateOriginEndpointRequest
Decode UpdateOriginEndpointRequest
Encode UpdateOriginEndpointRequest
```

#### `newUpdateOriginEndpointRequest`

``` purescript
newUpdateOriginEndpointRequest :: String -> UpdateOriginEndpointRequest
```

Constructs UpdateOriginEndpointRequest from required parameters

#### `newUpdateOriginEndpointRequest'`

``` purescript
newUpdateOriginEndpointRequest' :: String -> ({ "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: String, "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) } -> { "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: String, "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Whitelist" :: Maybe (ListOf__string) }) -> UpdateOriginEndpointRequest
```

Constructs UpdateOriginEndpointRequest's fields from required parameters

#### `UpdateOriginEndpointResponse`

``` purescript
newtype UpdateOriginEndpointResponse
  = UpdateOriginEndpointResponse { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }
```

##### Instances
``` purescript
Newtype UpdateOriginEndpointResponse _
Generic UpdateOriginEndpointResponse _
Show UpdateOriginEndpointResponse
Decode UpdateOriginEndpointResponse
Encode UpdateOriginEndpointResponse
```

#### `newUpdateOriginEndpointResponse`

``` purescript
newUpdateOriginEndpointResponse :: UpdateOriginEndpointResponse
```

Constructs UpdateOriginEndpointResponse from required parameters

#### `newUpdateOriginEndpointResponse'`

``` purescript
newUpdateOriginEndpointResponse' :: ({ "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) } -> { "Arn" :: Maybe (String), "ChannelId" :: Maybe (String), "DashPackage" :: Maybe (DashPackage), "Description" :: Maybe (String), "HlsPackage" :: Maybe (HlsPackage), "Id" :: Maybe (String), "ManifestName" :: Maybe (String), "MssPackage" :: Maybe (MssPackage), "StartoverWindowSeconds" :: Maybe (Int), "TimeDelaySeconds" :: Maybe (Int), "Url" :: Maybe (String), "Whitelist" :: Maybe (ListOf__string) }) -> UpdateOriginEndpointResponse
```

Constructs UpdateOriginEndpointResponse's fields from required parameters


