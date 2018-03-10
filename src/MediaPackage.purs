

-- | AWS Elemental MediaPackage
module AWS.MediaPackage where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "MediaPackage" :: String


-- | Creates a new Channel.
createChannel :: forall eff. CreateChannelRequest -> Aff (exception :: EXCEPTION | eff) CreateChannelResponse
createChannel = Request.request serviceName "createChannel" 


-- | Creates a new OriginEndpoint record.
createOriginEndpoint :: forall eff. CreateOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) CreateOriginEndpointResponse
createOriginEndpoint = Request.request serviceName "createOriginEndpoint" 


-- | Deletes an existing Channel.
deleteChannel :: forall eff. DeleteChannelRequest -> Aff (exception :: EXCEPTION | eff) DeleteChannelResponse
deleteChannel = Request.request serviceName "deleteChannel" 


-- | Deletes an existing OriginEndpoint.
deleteOriginEndpoint :: forall eff. DeleteOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) DeleteOriginEndpointResponse
deleteOriginEndpoint = Request.request serviceName "deleteOriginEndpoint" 


-- | Gets details about a Channel.
describeChannel :: forall eff. DescribeChannelRequest -> Aff (exception :: EXCEPTION | eff) DescribeChannelResponse
describeChannel = Request.request serviceName "describeChannel" 


-- | Gets details about an existing OriginEndpoint.
describeOriginEndpoint :: forall eff. DescribeOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) DescribeOriginEndpointResponse
describeOriginEndpoint = Request.request serviceName "describeOriginEndpoint" 


-- | Returns a collection of Channels.
listChannels :: forall eff. ListChannelsRequest -> Aff (exception :: EXCEPTION | eff) ListChannelsResponse
listChannels = Request.request serviceName "listChannels" 


-- | Returns a collection of OriginEndpoint records.
listOriginEndpoints :: forall eff. ListOriginEndpointsRequest -> Aff (exception :: EXCEPTION | eff) ListOriginEndpointsResponse
listOriginEndpoints = Request.request serviceName "listOriginEndpoints" 


-- | Changes the Channel ingest username and password.
rotateChannelCredentials :: forall eff. RotateChannelCredentialsRequest -> Aff (exception :: EXCEPTION | eff) RotateChannelCredentialsResponse
rotateChannelCredentials = Request.request serviceName "rotateChannelCredentials" 


-- | Updates an existing Channel.
updateChannel :: forall eff. UpdateChannelRequest -> Aff (exception :: EXCEPTION | eff) UpdateChannelResponse
updateChannel = Request.request serviceName "updateChannel" 


-- | Updates an existing OriginEndpoint.
updateOriginEndpoint :: forall eff. UpdateOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) UpdateOriginEndpointResponse
updateOriginEndpoint = Request.request serviceName "updateOriginEndpoint" 


newtype AdMarkers = AdMarkers String
derive instance newtypeAdMarkers :: Newtype AdMarkers _
derive instance repGenericAdMarkers :: Generic AdMarkers _
instance showAdMarkers :: Show AdMarkers where
  show = genericShow
instance decodeAdMarkers :: Decode AdMarkers where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAdMarkers :: Encode AdMarkers where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | A Channel resource configuration.
newtype Channel = Channel 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeChannel :: Newtype Channel _
derive instance repGenericChannel :: Generic Channel _
instance showChannel :: Show Channel where
  show = genericShow
instance decodeChannel :: Decode Channel where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChannel :: Encode Channel where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Channel from required parameters
newChannel :: Channel
newChannel  = Channel { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs Channel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChannel' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } ) -> Channel
newChannel'  customize = (Channel <<< customize) { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



-- | Configuration parameters for a new Channel.
newtype ChannelCreateParameters = ChannelCreateParameters 
  { "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeChannelCreateParameters :: Newtype ChannelCreateParameters _
derive instance repGenericChannelCreateParameters :: Generic ChannelCreateParameters _
instance showChannelCreateParameters :: Show ChannelCreateParameters where
  show = genericShow
instance decodeChannelCreateParameters :: Decode ChannelCreateParameters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChannelCreateParameters :: Encode ChannelCreateParameters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ChannelCreateParameters from required parameters
newChannelCreateParameters :: ChannelCreateParameters
newChannelCreateParameters  = ChannelCreateParameters { "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs ChannelCreateParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChannelCreateParameters' :: ( { "Description" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: NullOrUndefined.NullOrUndefined (String) } -> {"Description" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: NullOrUndefined.NullOrUndefined (String) } ) -> ChannelCreateParameters
newChannelCreateParameters'  customize = (ChannelCreateParameters <<< customize) { "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



-- | A collection of Channel records.
newtype ChannelList = ChannelList 
  { "Channels" :: NullOrUndefined.NullOrUndefined (ListOfChannel)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeChannelList :: Newtype ChannelList _
derive instance repGenericChannelList :: Generic ChannelList _
instance showChannelList :: Show ChannelList where
  show = genericShow
instance decodeChannelList :: Decode ChannelList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChannelList :: Encode ChannelList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ChannelList from required parameters
newChannelList :: ChannelList
newChannelList  = ChannelList { "Channels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ChannelList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChannelList' :: ( { "Channels" :: NullOrUndefined.NullOrUndefined (ListOfChannel) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"Channels" :: NullOrUndefined.NullOrUndefined (ListOfChannel) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ChannelList
newChannelList'  customize = (ChannelList <<< customize) { "Channels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | Configuration parameters for updating an existing Channel.
newtype ChannelUpdateParameters = ChannelUpdateParameters 
  { "Description" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeChannelUpdateParameters :: Newtype ChannelUpdateParameters _
derive instance repGenericChannelUpdateParameters :: Generic ChannelUpdateParameters _
instance showChannelUpdateParameters :: Show ChannelUpdateParameters where
  show = genericShow
instance decodeChannelUpdateParameters :: Decode ChannelUpdateParameters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChannelUpdateParameters :: Encode ChannelUpdateParameters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ChannelUpdateParameters from required parameters
newChannelUpdateParameters :: ChannelUpdateParameters
newChannelUpdateParameters  = ChannelUpdateParameters { "Description": (NullOrUndefined Nothing) }

-- | Constructs ChannelUpdateParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChannelUpdateParameters' :: ( { "Description" :: NullOrUndefined.NullOrUndefined (String) } -> {"Description" :: NullOrUndefined.NullOrUndefined (String) } ) -> ChannelUpdateParameters
newChannelUpdateParameters'  customize = (ChannelUpdateParameters <<< customize) { "Description": (NullOrUndefined Nothing) }



-- | A new Channel configuration.
newtype CreateChannelRequest = CreateChannelRequest 
  { "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "Id" :: (String)
  }
derive instance newtypeCreateChannelRequest :: Newtype CreateChannelRequest _
derive instance repGenericCreateChannelRequest :: Generic CreateChannelRequest _
instance showCreateChannelRequest :: Show CreateChannelRequest where
  show = genericShow
instance decodeCreateChannelRequest :: Decode CreateChannelRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateChannelRequest :: Encode CreateChannelRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateChannelRequest from required parameters
newCreateChannelRequest :: String -> CreateChannelRequest
newCreateChannelRequest _Id = CreateChannelRequest { "Id": _Id, "Description": (NullOrUndefined Nothing) }

-- | Constructs CreateChannelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateChannelRequest' :: String -> ( { "Description" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: (String) } -> {"Description" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: (String) } ) -> CreateChannelRequest
newCreateChannelRequest' _Id customize = (CreateChannelRequest <<< customize) { "Id": _Id, "Description": (NullOrUndefined Nothing) }



newtype CreateChannelResponse = CreateChannelResponse 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateChannelResponse :: Newtype CreateChannelResponse _
derive instance repGenericCreateChannelResponse :: Generic CreateChannelResponse _
instance showCreateChannelResponse :: Show CreateChannelResponse where
  show = genericShow
instance decodeCreateChannelResponse :: Decode CreateChannelResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateChannelResponse :: Encode CreateChannelResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateChannelResponse from required parameters
newCreateChannelResponse :: CreateChannelResponse
newCreateChannelResponse  = CreateChannelResponse { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs CreateChannelResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateChannelResponse' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateChannelResponse
newCreateChannelResponse'  customize = (CreateChannelResponse <<< customize) { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



-- | Configuration parameters used to create a new OriginEndpoint.
newtype CreateOriginEndpointRequest = CreateOriginEndpointRequest 
  { "ChannelId" :: (String)
  , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "Id" :: (String)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeCreateOriginEndpointRequest :: Newtype CreateOriginEndpointRequest _
derive instance repGenericCreateOriginEndpointRequest :: Generic CreateOriginEndpointRequest _
instance showCreateOriginEndpointRequest :: Show CreateOriginEndpointRequest where
  show = genericShow
instance decodeCreateOriginEndpointRequest :: Decode CreateOriginEndpointRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOriginEndpointRequest :: Encode CreateOriginEndpointRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOriginEndpointRequest from required parameters
newCreateOriginEndpointRequest :: String -> String -> CreateOriginEndpointRequest
newCreateOriginEndpointRequest _ChannelId _Id = CreateOriginEndpointRequest { "ChannelId": _ChannelId, "Id": _Id, "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs CreateOriginEndpointRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOriginEndpointRequest' :: String -> String -> ( { "ChannelId" :: (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"ChannelId" :: (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> CreateOriginEndpointRequest
newCreateOriginEndpointRequest' _ChannelId _Id customize = (CreateOriginEndpointRequest <<< customize) { "ChannelId": _ChannelId, "Id": _Id, "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }



newtype CreateOriginEndpointResponse = CreateOriginEndpointResponse 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "ChannelId" :: NullOrUndefined.NullOrUndefined (String)
  , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Url" :: NullOrUndefined.NullOrUndefined (String)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeCreateOriginEndpointResponse :: Newtype CreateOriginEndpointResponse _
derive instance repGenericCreateOriginEndpointResponse :: Generic CreateOriginEndpointResponse _
instance showCreateOriginEndpointResponse :: Show CreateOriginEndpointResponse where
  show = genericShow
instance decodeCreateOriginEndpointResponse :: Decode CreateOriginEndpointResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOriginEndpointResponse :: Encode CreateOriginEndpointResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOriginEndpointResponse from required parameters
newCreateOriginEndpointResponse :: CreateOriginEndpointResponse
newCreateOriginEndpointResponse  = CreateOriginEndpointResponse { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs CreateOriginEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOriginEndpointResponse' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> CreateOriginEndpointResponse
newCreateOriginEndpointResponse'  customize = (CreateOriginEndpointResponse <<< customize) { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }



-- | A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
newtype DashEncryption = DashEncryption 
  { "KeyRotationIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "SpekeKeyProvider" :: (SpekeKeyProvider)
  }
derive instance newtypeDashEncryption :: Newtype DashEncryption _
derive instance repGenericDashEncryption :: Generic DashEncryption _
instance showDashEncryption :: Show DashEncryption where
  show = genericShow
instance decodeDashEncryption :: Decode DashEncryption where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDashEncryption :: Encode DashEncryption where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DashEncryption from required parameters
newDashEncryption :: SpekeKeyProvider -> DashEncryption
newDashEncryption _SpekeKeyProvider = DashEncryption { "SpekeKeyProvider": _SpekeKeyProvider, "KeyRotationIntervalSeconds": (NullOrUndefined Nothing) }

-- | Constructs DashEncryption's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDashEncryption' :: SpekeKeyProvider -> ( { "KeyRotationIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "SpekeKeyProvider" :: (SpekeKeyProvider) } -> {"KeyRotationIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "SpekeKeyProvider" :: (SpekeKeyProvider) } ) -> DashEncryption
newDashEncryption' _SpekeKeyProvider customize = (DashEncryption <<< customize) { "SpekeKeyProvider": _SpekeKeyProvider, "KeyRotationIntervalSeconds": (NullOrUndefined Nothing) }



-- | A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
newtype DashPackage = DashPackage 
  { "Encryption" :: NullOrUndefined.NullOrUndefined (DashEncryption)
  , "ManifestWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "MinBufferTimeSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "MinUpdatePeriodSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Profile" :: NullOrUndefined.NullOrUndefined (Profile)
  , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection)
  , "SuggestedPresentationDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeDashPackage :: Newtype DashPackage _
derive instance repGenericDashPackage :: Generic DashPackage _
instance showDashPackage :: Show DashPackage where
  show = genericShow
instance decodeDashPackage :: Decode DashPackage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDashPackage :: Encode DashPackage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DashPackage from required parameters
newDashPackage :: DashPackage
newDashPackage  = DashPackage { "Encryption": (NullOrUndefined Nothing), "ManifestWindowSeconds": (NullOrUndefined Nothing), "MinBufferTimeSeconds": (NullOrUndefined Nothing), "MinUpdatePeriodSeconds": (NullOrUndefined Nothing), "Profile": (NullOrUndefined Nothing), "SegmentDurationSeconds": (NullOrUndefined Nothing), "StreamSelection": (NullOrUndefined Nothing), "SuggestedPresentationDelaySeconds": (NullOrUndefined Nothing) }

-- | Constructs DashPackage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDashPackage' :: ( { "Encryption" :: NullOrUndefined.NullOrUndefined (DashEncryption) , "ManifestWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "MinBufferTimeSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "MinUpdatePeriodSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Profile" :: NullOrUndefined.NullOrUndefined (Profile) , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection) , "SuggestedPresentationDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) } -> {"Encryption" :: NullOrUndefined.NullOrUndefined (DashEncryption) , "ManifestWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "MinBufferTimeSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "MinUpdatePeriodSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Profile" :: NullOrUndefined.NullOrUndefined (Profile) , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection) , "SuggestedPresentationDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) } ) -> DashPackage
newDashPackage'  customize = (DashPackage <<< customize) { "Encryption": (NullOrUndefined Nothing), "ManifestWindowSeconds": (NullOrUndefined Nothing), "MinBufferTimeSeconds": (NullOrUndefined Nothing), "MinUpdatePeriodSeconds": (NullOrUndefined Nothing), "Profile": (NullOrUndefined Nothing), "SegmentDurationSeconds": (NullOrUndefined Nothing), "StreamSelection": (NullOrUndefined Nothing), "SuggestedPresentationDelaySeconds": (NullOrUndefined Nothing) }



newtype DeleteChannelRequest = DeleteChannelRequest 
  { "Id" :: (String)
  }
derive instance newtypeDeleteChannelRequest :: Newtype DeleteChannelRequest _
derive instance repGenericDeleteChannelRequest :: Generic DeleteChannelRequest _
instance showDeleteChannelRequest :: Show DeleteChannelRequest where
  show = genericShow
instance decodeDeleteChannelRequest :: Decode DeleteChannelRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteChannelRequest :: Encode DeleteChannelRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteChannelRequest from required parameters
newDeleteChannelRequest :: String -> DeleteChannelRequest
newDeleteChannelRequest _Id = DeleteChannelRequest { "Id": _Id }

-- | Constructs DeleteChannelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteChannelRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> DeleteChannelRequest
newDeleteChannelRequest' _Id customize = (DeleteChannelRequest <<< customize) { "Id": _Id }



newtype DeleteChannelResponse = DeleteChannelResponse Types.NoArguments
derive instance newtypeDeleteChannelResponse :: Newtype DeleteChannelResponse _
derive instance repGenericDeleteChannelResponse :: Generic DeleteChannelResponse _
instance showDeleteChannelResponse :: Show DeleteChannelResponse where
  show = genericShow
instance decodeDeleteChannelResponse :: Decode DeleteChannelResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteChannelResponse :: Encode DeleteChannelResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteOriginEndpointRequest = DeleteOriginEndpointRequest 
  { "Id" :: (String)
  }
derive instance newtypeDeleteOriginEndpointRequest :: Newtype DeleteOriginEndpointRequest _
derive instance repGenericDeleteOriginEndpointRequest :: Generic DeleteOriginEndpointRequest _
instance showDeleteOriginEndpointRequest :: Show DeleteOriginEndpointRequest where
  show = genericShow
instance decodeDeleteOriginEndpointRequest :: Decode DeleteOriginEndpointRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteOriginEndpointRequest :: Encode DeleteOriginEndpointRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteOriginEndpointRequest from required parameters
newDeleteOriginEndpointRequest :: String -> DeleteOriginEndpointRequest
newDeleteOriginEndpointRequest _Id = DeleteOriginEndpointRequest { "Id": _Id }

-- | Constructs DeleteOriginEndpointRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteOriginEndpointRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> DeleteOriginEndpointRequest
newDeleteOriginEndpointRequest' _Id customize = (DeleteOriginEndpointRequest <<< customize) { "Id": _Id }



newtype DeleteOriginEndpointResponse = DeleteOriginEndpointResponse Types.NoArguments
derive instance newtypeDeleteOriginEndpointResponse :: Newtype DeleteOriginEndpointResponse _
derive instance repGenericDeleteOriginEndpointResponse :: Generic DeleteOriginEndpointResponse _
instance showDeleteOriginEndpointResponse :: Show DeleteOriginEndpointResponse where
  show = genericShow
instance decodeDeleteOriginEndpointResponse :: Decode DeleteOriginEndpointResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteOriginEndpointResponse :: Encode DeleteOriginEndpointResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeChannelRequest = DescribeChannelRequest 
  { "Id" :: (String)
  }
derive instance newtypeDescribeChannelRequest :: Newtype DescribeChannelRequest _
derive instance repGenericDescribeChannelRequest :: Generic DescribeChannelRequest _
instance showDescribeChannelRequest :: Show DescribeChannelRequest where
  show = genericShow
instance decodeDescribeChannelRequest :: Decode DescribeChannelRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeChannelRequest :: Encode DescribeChannelRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeChannelRequest from required parameters
newDescribeChannelRequest :: String -> DescribeChannelRequest
newDescribeChannelRequest _Id = DescribeChannelRequest { "Id": _Id }

-- | Constructs DescribeChannelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeChannelRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> DescribeChannelRequest
newDescribeChannelRequest' _Id customize = (DescribeChannelRequest <<< customize) { "Id": _Id }



newtype DescribeChannelResponse = DescribeChannelResponse 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeChannelResponse :: Newtype DescribeChannelResponse _
derive instance repGenericDescribeChannelResponse :: Generic DescribeChannelResponse _
instance showDescribeChannelResponse :: Show DescribeChannelResponse where
  show = genericShow
instance decodeDescribeChannelResponse :: Decode DescribeChannelResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeChannelResponse :: Encode DescribeChannelResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeChannelResponse from required parameters
newDescribeChannelResponse :: DescribeChannelResponse
newDescribeChannelResponse  = DescribeChannelResponse { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs DescribeChannelResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeChannelResponse' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeChannelResponse
newDescribeChannelResponse'  customize = (DescribeChannelResponse <<< customize) { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



newtype DescribeOriginEndpointRequest = DescribeOriginEndpointRequest 
  { "Id" :: (String)
  }
derive instance newtypeDescribeOriginEndpointRequest :: Newtype DescribeOriginEndpointRequest _
derive instance repGenericDescribeOriginEndpointRequest :: Generic DescribeOriginEndpointRequest _
instance showDescribeOriginEndpointRequest :: Show DescribeOriginEndpointRequest where
  show = genericShow
instance decodeDescribeOriginEndpointRequest :: Decode DescribeOriginEndpointRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeOriginEndpointRequest :: Encode DescribeOriginEndpointRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeOriginEndpointRequest from required parameters
newDescribeOriginEndpointRequest :: String -> DescribeOriginEndpointRequest
newDescribeOriginEndpointRequest _Id = DescribeOriginEndpointRequest { "Id": _Id }

-- | Constructs DescribeOriginEndpointRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOriginEndpointRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> DescribeOriginEndpointRequest
newDescribeOriginEndpointRequest' _Id customize = (DescribeOriginEndpointRequest <<< customize) { "Id": _Id }



newtype DescribeOriginEndpointResponse = DescribeOriginEndpointResponse 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "ChannelId" :: NullOrUndefined.NullOrUndefined (String)
  , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Url" :: NullOrUndefined.NullOrUndefined (String)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeDescribeOriginEndpointResponse :: Newtype DescribeOriginEndpointResponse _
derive instance repGenericDescribeOriginEndpointResponse :: Generic DescribeOriginEndpointResponse _
instance showDescribeOriginEndpointResponse :: Show DescribeOriginEndpointResponse where
  show = genericShow
instance decodeDescribeOriginEndpointResponse :: Decode DescribeOriginEndpointResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeOriginEndpointResponse :: Encode DescribeOriginEndpointResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeOriginEndpointResponse from required parameters
newDescribeOriginEndpointResponse :: DescribeOriginEndpointResponse
newDescribeOriginEndpointResponse  = DescribeOriginEndpointResponse { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs DescribeOriginEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOriginEndpointResponse' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> DescribeOriginEndpointResponse
newDescribeOriginEndpointResponse'  customize = (DescribeOriginEndpointResponse <<< customize) { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }



newtype EncryptionMethod = EncryptionMethod String
derive instance newtypeEncryptionMethod :: Newtype EncryptionMethod _
derive instance repGenericEncryptionMethod :: Generic EncryptionMethod _
instance showEncryptionMethod :: Show EncryptionMethod where
  show = genericShow
instance decodeEncryptionMethod :: Decode EncryptionMethod where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptionMethod :: Encode EncryptionMethod where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | The client is not authorized to access the requested resource.
newtype ForbiddenException = ForbiddenException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where
  show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeForbiddenException :: Encode ForbiddenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ForbiddenException from required parameters
newForbiddenException :: ForbiddenException
newForbiddenException  = ForbiddenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ForbiddenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForbiddenException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ForbiddenException
newForbiddenException'  customize = (ForbiddenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | An HTTP Live Streaming (HLS) encryption configuration.
newtype HlsEncryption = HlsEncryption 
  { "ConstantInitializationVector" :: NullOrUndefined.NullOrUndefined (String)
  , "EncryptionMethod" :: NullOrUndefined.NullOrUndefined (EncryptionMethod)
  , "KeyRotationIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "RepeatExtXKey" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "SpekeKeyProvider" :: (SpekeKeyProvider)
  }
derive instance newtypeHlsEncryption :: Newtype HlsEncryption _
derive instance repGenericHlsEncryption :: Generic HlsEncryption _
instance showHlsEncryption :: Show HlsEncryption where
  show = genericShow
instance decodeHlsEncryption :: Decode HlsEncryption where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHlsEncryption :: Encode HlsEncryption where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HlsEncryption from required parameters
newHlsEncryption :: SpekeKeyProvider -> HlsEncryption
newHlsEncryption _SpekeKeyProvider = HlsEncryption { "SpekeKeyProvider": _SpekeKeyProvider, "ConstantInitializationVector": (NullOrUndefined Nothing), "EncryptionMethod": (NullOrUndefined Nothing), "KeyRotationIntervalSeconds": (NullOrUndefined Nothing), "RepeatExtXKey": (NullOrUndefined Nothing) }

-- | Constructs HlsEncryption's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHlsEncryption' :: SpekeKeyProvider -> ( { "ConstantInitializationVector" :: NullOrUndefined.NullOrUndefined (String) , "EncryptionMethod" :: NullOrUndefined.NullOrUndefined (EncryptionMethod) , "KeyRotationIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "RepeatExtXKey" :: NullOrUndefined.NullOrUndefined (Boolean) , "SpekeKeyProvider" :: (SpekeKeyProvider) } -> {"ConstantInitializationVector" :: NullOrUndefined.NullOrUndefined (String) , "EncryptionMethod" :: NullOrUndefined.NullOrUndefined (EncryptionMethod) , "KeyRotationIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "RepeatExtXKey" :: NullOrUndefined.NullOrUndefined (Boolean) , "SpekeKeyProvider" :: (SpekeKeyProvider) } ) -> HlsEncryption
newHlsEncryption' _SpekeKeyProvider customize = (HlsEncryption <<< customize) { "SpekeKeyProvider": _SpekeKeyProvider, "ConstantInitializationVector": (NullOrUndefined Nothing), "EncryptionMethod": (NullOrUndefined Nothing), "KeyRotationIntervalSeconds": (NullOrUndefined Nothing), "RepeatExtXKey": (NullOrUndefined Nothing) }



-- | An HTTP Live Streaming (HLS) ingest resource configuration.
newtype HlsIngest = HlsIngest 
  { "IngestEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfIngestEndpoint)
  }
derive instance newtypeHlsIngest :: Newtype HlsIngest _
derive instance repGenericHlsIngest :: Generic HlsIngest _
instance showHlsIngest :: Show HlsIngest where
  show = genericShow
instance decodeHlsIngest :: Decode HlsIngest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHlsIngest :: Encode HlsIngest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HlsIngest from required parameters
newHlsIngest :: HlsIngest
newHlsIngest  = HlsIngest { "IngestEndpoints": (NullOrUndefined Nothing) }

-- | Constructs HlsIngest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHlsIngest' :: ( { "IngestEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfIngestEndpoint) } -> {"IngestEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfIngestEndpoint) } ) -> HlsIngest
newHlsIngest'  customize = (HlsIngest <<< customize) { "IngestEndpoints": (NullOrUndefined Nothing) }



-- | An HTTP Live Streaming (HLS) packaging configuration.
newtype HlsPackage = HlsPackage 
  { "AdMarkers" :: NullOrUndefined.NullOrUndefined (AdMarkers)
  , "Encryption" :: NullOrUndefined.NullOrUndefined (HlsEncryption)
  , "IncludeIframeOnlyStream" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "PlaylistType" :: NullOrUndefined.NullOrUndefined (PlaylistType)
  , "PlaylistWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "ProgramDateTimeIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection)
  , "UseAudioRenditionGroup" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeHlsPackage :: Newtype HlsPackage _
derive instance repGenericHlsPackage :: Generic HlsPackage _
instance showHlsPackage :: Show HlsPackage where
  show = genericShow
instance decodeHlsPackage :: Decode HlsPackage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHlsPackage :: Encode HlsPackage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HlsPackage from required parameters
newHlsPackage :: HlsPackage
newHlsPackage  = HlsPackage { "AdMarkers": (NullOrUndefined Nothing), "Encryption": (NullOrUndefined Nothing), "IncludeIframeOnlyStream": (NullOrUndefined Nothing), "PlaylistType": (NullOrUndefined Nothing), "PlaylistWindowSeconds": (NullOrUndefined Nothing), "ProgramDateTimeIntervalSeconds": (NullOrUndefined Nothing), "SegmentDurationSeconds": (NullOrUndefined Nothing), "StreamSelection": (NullOrUndefined Nothing), "UseAudioRenditionGroup": (NullOrUndefined Nothing) }

-- | Constructs HlsPackage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHlsPackage' :: ( { "AdMarkers" :: NullOrUndefined.NullOrUndefined (AdMarkers) , "Encryption" :: NullOrUndefined.NullOrUndefined (HlsEncryption) , "IncludeIframeOnlyStream" :: NullOrUndefined.NullOrUndefined (Boolean) , "PlaylistType" :: NullOrUndefined.NullOrUndefined (PlaylistType) , "PlaylistWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "ProgramDateTimeIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection) , "UseAudioRenditionGroup" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"AdMarkers" :: NullOrUndefined.NullOrUndefined (AdMarkers) , "Encryption" :: NullOrUndefined.NullOrUndefined (HlsEncryption) , "IncludeIframeOnlyStream" :: NullOrUndefined.NullOrUndefined (Boolean) , "PlaylistType" :: NullOrUndefined.NullOrUndefined (PlaylistType) , "PlaylistWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "ProgramDateTimeIntervalSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection) , "UseAudioRenditionGroup" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> HlsPackage
newHlsPackage'  customize = (HlsPackage <<< customize) { "AdMarkers": (NullOrUndefined Nothing), "Encryption": (NullOrUndefined Nothing), "IncludeIframeOnlyStream": (NullOrUndefined Nothing), "PlaylistType": (NullOrUndefined Nothing), "PlaylistWindowSeconds": (NullOrUndefined Nothing), "ProgramDateTimeIntervalSeconds": (NullOrUndefined Nothing), "SegmentDurationSeconds": (NullOrUndefined Nothing), "StreamSelection": (NullOrUndefined Nothing), "UseAudioRenditionGroup": (NullOrUndefined Nothing) }



-- | An endpoint for ingesting source content for a Channel.
newtype IngestEndpoint = IngestEndpoint 
  { "Password" :: NullOrUndefined.NullOrUndefined (String)
  , "Url" :: NullOrUndefined.NullOrUndefined (String)
  , "Username" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeIngestEndpoint :: Newtype IngestEndpoint _
derive instance repGenericIngestEndpoint :: Generic IngestEndpoint _
instance showIngestEndpoint :: Show IngestEndpoint where
  show = genericShow
instance decodeIngestEndpoint :: Decode IngestEndpoint where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIngestEndpoint :: Encode IngestEndpoint where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs IngestEndpoint from required parameters
newIngestEndpoint :: IngestEndpoint
newIngestEndpoint  = IngestEndpoint { "Password": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Username": (NullOrUndefined Nothing) }

-- | Constructs IngestEndpoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIngestEndpoint' :: ( { "Password" :: NullOrUndefined.NullOrUndefined (String) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Username" :: NullOrUndefined.NullOrUndefined (String) } -> {"Password" :: NullOrUndefined.NullOrUndefined (String) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Username" :: NullOrUndefined.NullOrUndefined (String) } ) -> IngestEndpoint
newIngestEndpoint'  customize = (IngestEndpoint <<< customize) { "Password": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Username": (NullOrUndefined Nothing) }



-- | An unexpected error occurred.
newtype InternalServerErrorException = InternalServerErrorException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where
  show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ListChannelsRequest = ListChannelsRequest 
  { "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListChannelsRequest :: Newtype ListChannelsRequest _
derive instance repGenericListChannelsRequest :: Generic ListChannelsRequest _
instance showListChannelsRequest :: Show ListChannelsRequest where
  show = genericShow
instance decodeListChannelsRequest :: Decode ListChannelsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListChannelsRequest :: Encode ListChannelsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListChannelsRequest from required parameters
newListChannelsRequest :: ListChannelsRequest
newListChannelsRequest  = ListChannelsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListChannelsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListChannelsRequest' :: ( { "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListChannelsRequest
newListChannelsRequest'  customize = (ListChannelsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListChannelsResponse = ListChannelsResponse 
  { "Channels" :: NullOrUndefined.NullOrUndefined (ListOfChannel)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListChannelsResponse :: Newtype ListChannelsResponse _
derive instance repGenericListChannelsResponse :: Generic ListChannelsResponse _
instance showListChannelsResponse :: Show ListChannelsResponse where
  show = genericShow
instance decodeListChannelsResponse :: Decode ListChannelsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListChannelsResponse :: Encode ListChannelsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListChannelsResponse from required parameters
newListChannelsResponse :: ListChannelsResponse
newListChannelsResponse  = ListChannelsResponse { "Channels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListChannelsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListChannelsResponse' :: ( { "Channels" :: NullOrUndefined.NullOrUndefined (ListOfChannel) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"Channels" :: NullOrUndefined.NullOrUndefined (ListOfChannel) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListChannelsResponse
newListChannelsResponse'  customize = (ListChannelsResponse <<< customize) { "Channels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOfChannel = ListOfChannel (Array Channel)
derive instance newtypeListOfChannel :: Newtype ListOfChannel _
derive instance repGenericListOfChannel :: Generic ListOfChannel _
instance showListOfChannel :: Show ListOfChannel where
  show = genericShow
instance decodeListOfChannel :: Decode ListOfChannel where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfChannel :: Encode ListOfChannel where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfIngestEndpoint = ListOfIngestEndpoint (Array IngestEndpoint)
derive instance newtypeListOfIngestEndpoint :: Newtype ListOfIngestEndpoint _
derive instance repGenericListOfIngestEndpoint :: Generic ListOfIngestEndpoint _
instance showListOfIngestEndpoint :: Show ListOfIngestEndpoint where
  show = genericShow
instance decodeListOfIngestEndpoint :: Decode ListOfIngestEndpoint where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfIngestEndpoint :: Encode ListOfIngestEndpoint where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfOriginEndpoint = ListOfOriginEndpoint (Array OriginEndpoint)
derive instance newtypeListOfOriginEndpoint :: Newtype ListOfOriginEndpoint _
derive instance repGenericListOfOriginEndpoint :: Generic ListOfOriginEndpoint _
instance showListOfOriginEndpoint :: Show ListOfOriginEndpoint where
  show = genericShow
instance decodeListOfOriginEndpoint :: Decode ListOfOriginEndpoint where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfOriginEndpoint :: Encode ListOfOriginEndpoint where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOf__string = ListOf__string (Array String)
derive instance newtypeListOf__string :: Newtype ListOf__string _
derive instance repGenericListOf__string :: Generic ListOf__string _
instance showListOf__string :: Show ListOf__string where
  show = genericShow
instance decodeListOf__string :: Decode ListOf__string where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOf__string :: Encode ListOf__string where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOriginEndpointsRequest = ListOriginEndpointsRequest 
  { "ChannelId" :: NullOrUndefined.NullOrUndefined (String)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListOriginEndpointsRequest :: Newtype ListOriginEndpointsRequest _
derive instance repGenericListOriginEndpointsRequest :: Generic ListOriginEndpointsRequest _
instance showListOriginEndpointsRequest :: Show ListOriginEndpointsRequest where
  show = genericShow
instance decodeListOriginEndpointsRequest :: Decode ListOriginEndpointsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOriginEndpointsRequest :: Encode ListOriginEndpointsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOriginEndpointsRequest from required parameters
newListOriginEndpointsRequest :: ListOriginEndpointsRequest
newListOriginEndpointsRequest  = ListOriginEndpointsRequest { "ChannelId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListOriginEndpointsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOriginEndpointsRequest' :: ( { "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListOriginEndpointsRequest
newListOriginEndpointsRequest'  customize = (ListOriginEndpointsRequest <<< customize) { "ChannelId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOriginEndpointsResponse = ListOriginEndpointsResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "OriginEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfOriginEndpoint)
  }
derive instance newtypeListOriginEndpointsResponse :: Newtype ListOriginEndpointsResponse _
derive instance repGenericListOriginEndpointsResponse :: Generic ListOriginEndpointsResponse _
instance showListOriginEndpointsResponse :: Show ListOriginEndpointsResponse where
  show = genericShow
instance decodeListOriginEndpointsResponse :: Decode ListOriginEndpointsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOriginEndpointsResponse :: Encode ListOriginEndpointsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOriginEndpointsResponse from required parameters
newListOriginEndpointsResponse :: ListOriginEndpointsResponse
newListOriginEndpointsResponse  = ListOriginEndpointsResponse { "NextToken": (NullOrUndefined Nothing), "OriginEndpoints": (NullOrUndefined Nothing) }

-- | Constructs ListOriginEndpointsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOriginEndpointsResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "OriginEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfOriginEndpoint) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (String) , "OriginEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfOriginEndpoint) } ) -> ListOriginEndpointsResponse
newListOriginEndpointsResponse'  customize = (ListOriginEndpointsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "OriginEndpoints": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | A Microsoft Smooth Streaming (MSS) encryption configuration.
newtype MssEncryption = MssEncryption 
  { "SpekeKeyProvider" :: (SpekeKeyProvider)
  }
derive instance newtypeMssEncryption :: Newtype MssEncryption _
derive instance repGenericMssEncryption :: Generic MssEncryption _
instance showMssEncryption :: Show MssEncryption where
  show = genericShow
instance decodeMssEncryption :: Decode MssEncryption where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMssEncryption :: Encode MssEncryption where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MssEncryption from required parameters
newMssEncryption :: SpekeKeyProvider -> MssEncryption
newMssEncryption _SpekeKeyProvider = MssEncryption { "SpekeKeyProvider": _SpekeKeyProvider }

-- | Constructs MssEncryption's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMssEncryption' :: SpekeKeyProvider -> ( { "SpekeKeyProvider" :: (SpekeKeyProvider) } -> {"SpekeKeyProvider" :: (SpekeKeyProvider) } ) -> MssEncryption
newMssEncryption' _SpekeKeyProvider customize = (MssEncryption <<< customize) { "SpekeKeyProvider": _SpekeKeyProvider }



-- | A Microsoft Smooth Streaming (MSS) packaging configuration.
newtype MssPackage = MssPackage 
  { "Encryption" :: NullOrUndefined.NullOrUndefined (MssEncryption)
  , "ManifestWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection)
  }
derive instance newtypeMssPackage :: Newtype MssPackage _
derive instance repGenericMssPackage :: Generic MssPackage _
instance showMssPackage :: Show MssPackage where
  show = genericShow
instance decodeMssPackage :: Decode MssPackage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMssPackage :: Encode MssPackage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MssPackage from required parameters
newMssPackage :: MssPackage
newMssPackage  = MssPackage { "Encryption": (NullOrUndefined Nothing), "ManifestWindowSeconds": (NullOrUndefined Nothing), "SegmentDurationSeconds": (NullOrUndefined Nothing), "StreamSelection": (NullOrUndefined Nothing) }

-- | Constructs MssPackage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMssPackage' :: ( { "Encryption" :: NullOrUndefined.NullOrUndefined (MssEncryption) , "ManifestWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection) } -> {"Encryption" :: NullOrUndefined.NullOrUndefined (MssEncryption) , "ManifestWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "SegmentDurationSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "StreamSelection" :: NullOrUndefined.NullOrUndefined (StreamSelection) } ) -> MssPackage
newMssPackage'  customize = (MssPackage <<< customize) { "Encryption": (NullOrUndefined Nothing), "ManifestWindowSeconds": (NullOrUndefined Nothing), "SegmentDurationSeconds": (NullOrUndefined Nothing), "StreamSelection": (NullOrUndefined Nothing) }



-- | The requested resource does not exist.
newtype NotFoundException = NotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | An OriginEndpoint resource configuration.
newtype OriginEndpoint = OriginEndpoint 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "ChannelId" :: NullOrUndefined.NullOrUndefined (String)
  , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Url" :: NullOrUndefined.NullOrUndefined (String)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeOriginEndpoint :: Newtype OriginEndpoint _
derive instance repGenericOriginEndpoint :: Generic OriginEndpoint _
instance showOriginEndpoint :: Show OriginEndpoint where
  show = genericShow
instance decodeOriginEndpoint :: Decode OriginEndpoint where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOriginEndpoint :: Encode OriginEndpoint where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OriginEndpoint from required parameters
newOriginEndpoint :: OriginEndpoint
newOriginEndpoint  = OriginEndpoint { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs OriginEndpoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOriginEndpoint' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> OriginEndpoint
newOriginEndpoint'  customize = (OriginEndpoint <<< customize) { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }



-- | Configuration parameters for a new OriginEndpoint.
newtype OriginEndpointCreateParameters = OriginEndpointCreateParameters 
  { "ChannelId" :: NullOrUndefined.NullOrUndefined (String)
  , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeOriginEndpointCreateParameters :: Newtype OriginEndpointCreateParameters _
derive instance repGenericOriginEndpointCreateParameters :: Generic OriginEndpointCreateParameters _
instance showOriginEndpointCreateParameters :: Show OriginEndpointCreateParameters where
  show = genericShow
instance decodeOriginEndpointCreateParameters :: Decode OriginEndpointCreateParameters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOriginEndpointCreateParameters :: Encode OriginEndpointCreateParameters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OriginEndpointCreateParameters from required parameters
newOriginEndpointCreateParameters :: OriginEndpointCreateParameters
newOriginEndpointCreateParameters  = OriginEndpointCreateParameters { "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs OriginEndpointCreateParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOriginEndpointCreateParameters' :: ( { "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> OriginEndpointCreateParameters
newOriginEndpointCreateParameters'  customize = (OriginEndpointCreateParameters <<< customize) { "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }



-- | A collection of OriginEndpoint records.
newtype OriginEndpointList = OriginEndpointList 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "OriginEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfOriginEndpoint)
  }
derive instance newtypeOriginEndpointList :: Newtype OriginEndpointList _
derive instance repGenericOriginEndpointList :: Generic OriginEndpointList _
instance showOriginEndpointList :: Show OriginEndpointList where
  show = genericShow
instance decodeOriginEndpointList :: Decode OriginEndpointList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOriginEndpointList :: Encode OriginEndpointList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OriginEndpointList from required parameters
newOriginEndpointList :: OriginEndpointList
newOriginEndpointList  = OriginEndpointList { "NextToken": (NullOrUndefined Nothing), "OriginEndpoints": (NullOrUndefined Nothing) }

-- | Constructs OriginEndpointList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOriginEndpointList' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "OriginEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfOriginEndpoint) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (String) , "OriginEndpoints" :: NullOrUndefined.NullOrUndefined (ListOfOriginEndpoint) } ) -> OriginEndpointList
newOriginEndpointList'  customize = (OriginEndpointList <<< customize) { "NextToken": (NullOrUndefined Nothing), "OriginEndpoints": (NullOrUndefined Nothing) }



-- | Configuration parameters for updating an existing OriginEndpoint.
newtype OriginEndpointUpdateParameters = OriginEndpointUpdateParameters 
  { "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeOriginEndpointUpdateParameters :: Newtype OriginEndpointUpdateParameters _
derive instance repGenericOriginEndpointUpdateParameters :: Generic OriginEndpointUpdateParameters _
instance showOriginEndpointUpdateParameters :: Show OriginEndpointUpdateParameters where
  show = genericShow
instance decodeOriginEndpointUpdateParameters :: Decode OriginEndpointUpdateParameters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOriginEndpointUpdateParameters :: Encode OriginEndpointUpdateParameters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OriginEndpointUpdateParameters from required parameters
newOriginEndpointUpdateParameters :: OriginEndpointUpdateParameters
newOriginEndpointUpdateParameters  = OriginEndpointUpdateParameters { "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs OriginEndpointUpdateParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOriginEndpointUpdateParameters' :: ( { "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> OriginEndpointUpdateParameters
newOriginEndpointUpdateParameters'  customize = (OriginEndpointUpdateParameters <<< customize) { "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }



newtype PlaylistType = PlaylistType String
derive instance newtypePlaylistType :: Newtype PlaylistType _
derive instance repGenericPlaylistType :: Generic PlaylistType _
instance showPlaylistType :: Show PlaylistType where
  show = genericShow
instance decodePlaylistType :: Decode PlaylistType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePlaylistType :: Encode PlaylistType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Profile = Profile String
derive instance newtypeProfile :: Newtype Profile _
derive instance repGenericProfile :: Generic Profile _
instance showProfile :: Show Profile where
  show = genericShow
instance decodeProfile :: Decode Profile where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProfile :: Encode Profile where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RotateChannelCredentialsRequest = RotateChannelCredentialsRequest 
  { "Id" :: (String)
  }
derive instance newtypeRotateChannelCredentialsRequest :: Newtype RotateChannelCredentialsRequest _
derive instance repGenericRotateChannelCredentialsRequest :: Generic RotateChannelCredentialsRequest _
instance showRotateChannelCredentialsRequest :: Show RotateChannelCredentialsRequest where
  show = genericShow
instance decodeRotateChannelCredentialsRequest :: Decode RotateChannelCredentialsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRotateChannelCredentialsRequest :: Encode RotateChannelCredentialsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RotateChannelCredentialsRequest from required parameters
newRotateChannelCredentialsRequest :: String -> RotateChannelCredentialsRequest
newRotateChannelCredentialsRequest _Id = RotateChannelCredentialsRequest { "Id": _Id }

-- | Constructs RotateChannelCredentialsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRotateChannelCredentialsRequest' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> RotateChannelCredentialsRequest
newRotateChannelCredentialsRequest' _Id customize = (RotateChannelCredentialsRequest <<< customize) { "Id": _Id }



newtype RotateChannelCredentialsResponse = RotateChannelCredentialsResponse 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeRotateChannelCredentialsResponse :: Newtype RotateChannelCredentialsResponse _
derive instance repGenericRotateChannelCredentialsResponse :: Generic RotateChannelCredentialsResponse _
instance showRotateChannelCredentialsResponse :: Show RotateChannelCredentialsResponse where
  show = genericShow
instance decodeRotateChannelCredentialsResponse :: Decode RotateChannelCredentialsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRotateChannelCredentialsResponse :: Encode RotateChannelCredentialsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RotateChannelCredentialsResponse from required parameters
newRotateChannelCredentialsResponse :: RotateChannelCredentialsResponse
newRotateChannelCredentialsResponse  = RotateChannelCredentialsResponse { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs RotateChannelCredentialsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRotateChannelCredentialsResponse' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } ) -> RotateChannelCredentialsResponse
newRotateChannelCredentialsResponse'  customize = (RotateChannelCredentialsResponse <<< customize) { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



-- | An unexpected error occurred.
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where
  show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
newtype SpekeKeyProvider = SpekeKeyProvider 
  { "ResourceId" :: (String)
  , "RoleArn" :: (String)
  , "SystemIds" :: (ListOf__string)
  , "Url" :: (String)
  }
derive instance newtypeSpekeKeyProvider :: Newtype SpekeKeyProvider _
derive instance repGenericSpekeKeyProvider :: Generic SpekeKeyProvider _
instance showSpekeKeyProvider :: Show SpekeKeyProvider where
  show = genericShow
instance decodeSpekeKeyProvider :: Decode SpekeKeyProvider where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSpekeKeyProvider :: Encode SpekeKeyProvider where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SpekeKeyProvider from required parameters
newSpekeKeyProvider :: String -> String -> ListOf__string -> String -> SpekeKeyProvider
newSpekeKeyProvider _ResourceId _RoleArn _SystemIds _Url = SpekeKeyProvider { "ResourceId": _ResourceId, "RoleArn": _RoleArn, "SystemIds": _SystemIds, "Url": _Url }

-- | Constructs SpekeKeyProvider's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSpekeKeyProvider' :: String -> String -> ListOf__string -> String -> ( { "ResourceId" :: (String) , "RoleArn" :: (String) , "SystemIds" :: (ListOf__string) , "Url" :: (String) } -> {"ResourceId" :: (String) , "RoleArn" :: (String) , "SystemIds" :: (ListOf__string) , "Url" :: (String) } ) -> SpekeKeyProvider
newSpekeKeyProvider' _ResourceId _RoleArn _SystemIds _Url customize = (SpekeKeyProvider <<< customize) { "ResourceId": _ResourceId, "RoleArn": _RoleArn, "SystemIds": _SystemIds, "Url": _Url }



newtype StreamOrder = StreamOrder String
derive instance newtypeStreamOrder :: Newtype StreamOrder _
derive instance repGenericStreamOrder :: Generic StreamOrder _
instance showStreamOrder :: Show StreamOrder where
  show = genericShow
instance decodeStreamOrder :: Decode StreamOrder where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStreamOrder :: Encode StreamOrder where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | A StreamSelection configuration.
newtype StreamSelection = StreamSelection 
  { "MaxVideoBitsPerSecond" :: NullOrUndefined.NullOrUndefined (Int)
  , "MinVideoBitsPerSecond" :: NullOrUndefined.NullOrUndefined (Int)
  , "StreamOrder" :: NullOrUndefined.NullOrUndefined (StreamOrder)
  }
derive instance newtypeStreamSelection :: Newtype StreamSelection _
derive instance repGenericStreamSelection :: Generic StreamSelection _
instance showStreamSelection :: Show StreamSelection where
  show = genericShow
instance decodeStreamSelection :: Decode StreamSelection where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStreamSelection :: Encode StreamSelection where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StreamSelection from required parameters
newStreamSelection :: StreamSelection
newStreamSelection  = StreamSelection { "MaxVideoBitsPerSecond": (NullOrUndefined Nothing), "MinVideoBitsPerSecond": (NullOrUndefined Nothing), "StreamOrder": (NullOrUndefined Nothing) }

-- | Constructs StreamSelection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamSelection' :: ( { "MaxVideoBitsPerSecond" :: NullOrUndefined.NullOrUndefined (Int) , "MinVideoBitsPerSecond" :: NullOrUndefined.NullOrUndefined (Int) , "StreamOrder" :: NullOrUndefined.NullOrUndefined (StreamOrder) } -> {"MaxVideoBitsPerSecond" :: NullOrUndefined.NullOrUndefined (Int) , "MinVideoBitsPerSecond" :: NullOrUndefined.NullOrUndefined (Int) , "StreamOrder" :: NullOrUndefined.NullOrUndefined (StreamOrder) } ) -> StreamSelection
newStreamSelection'  customize = (StreamSelection <<< customize) { "MaxVideoBitsPerSecond": (NullOrUndefined Nothing), "MinVideoBitsPerSecond": (NullOrUndefined Nothing), "StreamOrder": (NullOrUndefined Nothing) }



-- | The client has exceeded their resource or throttling limits.
newtype TooManyRequestsException = TooManyRequestsException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | The parameters sent in the request are not valid.
newtype UnprocessableEntityException = UnprocessableEntityException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUnprocessableEntityException :: Newtype UnprocessableEntityException _
derive instance repGenericUnprocessableEntityException :: Generic UnprocessableEntityException _
instance showUnprocessableEntityException :: Show UnprocessableEntityException where
  show = genericShow
instance decodeUnprocessableEntityException :: Decode UnprocessableEntityException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnprocessableEntityException :: Encode UnprocessableEntityException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnprocessableEntityException from required parameters
newUnprocessableEntityException :: UnprocessableEntityException
newUnprocessableEntityException  = UnprocessableEntityException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnprocessableEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessableEntityException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> UnprocessableEntityException
newUnprocessableEntityException'  customize = (UnprocessableEntityException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | Configuration parameters used to update the Channel.
newtype UpdateChannelRequest = UpdateChannelRequest 
  { "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "Id" :: (String)
  }
derive instance newtypeUpdateChannelRequest :: Newtype UpdateChannelRequest _
derive instance repGenericUpdateChannelRequest :: Generic UpdateChannelRequest _
instance showUpdateChannelRequest :: Show UpdateChannelRequest where
  show = genericShow
instance decodeUpdateChannelRequest :: Decode UpdateChannelRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateChannelRequest :: Encode UpdateChannelRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateChannelRequest from required parameters
newUpdateChannelRequest :: String -> UpdateChannelRequest
newUpdateChannelRequest _Id = UpdateChannelRequest { "Id": _Id, "Description": (NullOrUndefined Nothing) }

-- | Constructs UpdateChannelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateChannelRequest' :: String -> ( { "Description" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: (String) } -> {"Description" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: (String) } ) -> UpdateChannelRequest
newUpdateChannelRequest' _Id customize = (UpdateChannelRequest <<< customize) { "Id": _Id, "Description": (NullOrUndefined Nothing) }



newtype UpdateChannelResponse = UpdateChannelResponse 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateChannelResponse :: Newtype UpdateChannelResponse _
derive instance repGenericUpdateChannelResponse :: Generic UpdateChannelResponse _
instance showUpdateChannelResponse :: Show UpdateChannelResponse where
  show = genericShow
instance decodeUpdateChannelResponse :: Decode UpdateChannelResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateChannelResponse :: Encode UpdateChannelResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateChannelResponse from required parameters
newUpdateChannelResponse :: UpdateChannelResponse
newUpdateChannelResponse  = UpdateChannelResponse { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs UpdateChannelResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateChannelResponse' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsIngest" :: NullOrUndefined.NullOrUndefined (HlsIngest) , "Id" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateChannelResponse
newUpdateChannelResponse'  customize = (UpdateChannelResponse <<< customize) { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsIngest": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



-- | Configuration parameters used to update an existing OriginEndpoint.
newtype UpdateOriginEndpointRequest = UpdateOriginEndpointRequest 
  { "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "Id" :: (String)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeUpdateOriginEndpointRequest :: Newtype UpdateOriginEndpointRequest _
derive instance repGenericUpdateOriginEndpointRequest :: Generic UpdateOriginEndpointRequest _
instance showUpdateOriginEndpointRequest :: Show UpdateOriginEndpointRequest where
  show = genericShow
instance decodeUpdateOriginEndpointRequest :: Decode UpdateOriginEndpointRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateOriginEndpointRequest :: Encode UpdateOriginEndpointRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateOriginEndpointRequest from required parameters
newUpdateOriginEndpointRequest :: String -> UpdateOriginEndpointRequest
newUpdateOriginEndpointRequest _Id = UpdateOriginEndpointRequest { "Id": _Id, "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs UpdateOriginEndpointRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOriginEndpointRequest' :: String -> ( { "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> UpdateOriginEndpointRequest
newUpdateOriginEndpointRequest' _Id customize = (UpdateOriginEndpointRequest <<< customize) { "Id": _Id, "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }



newtype UpdateOriginEndpointResponse = UpdateOriginEndpointResponse 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "ChannelId" :: NullOrUndefined.NullOrUndefined (String)
  , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  , "ManifestName" :: NullOrUndefined.NullOrUndefined (String)
  , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage)
  , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int)
  , "Url" :: NullOrUndefined.NullOrUndefined (String)
  , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string)
  }
derive instance newtypeUpdateOriginEndpointResponse :: Newtype UpdateOriginEndpointResponse _
derive instance repGenericUpdateOriginEndpointResponse :: Generic UpdateOriginEndpointResponse _
instance showUpdateOriginEndpointResponse :: Show UpdateOriginEndpointResponse where
  show = genericShow
instance decodeUpdateOriginEndpointResponse :: Decode UpdateOriginEndpointResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateOriginEndpointResponse :: Encode UpdateOriginEndpointResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateOriginEndpointResponse from required parameters
newUpdateOriginEndpointResponse :: UpdateOriginEndpointResponse
newUpdateOriginEndpointResponse  = UpdateOriginEndpointResponse { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

-- | Constructs UpdateOriginEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOriginEndpointResponse' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "ChannelId" :: NullOrUndefined.NullOrUndefined (String) , "DashPackage" :: NullOrUndefined.NullOrUndefined (DashPackage) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HlsPackage" :: NullOrUndefined.NullOrUndefined (HlsPackage) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "ManifestName" :: NullOrUndefined.NullOrUndefined (String) , "MssPackage" :: NullOrUndefined.NullOrUndefined (MssPackage) , "StartoverWindowSeconds" :: NullOrUndefined.NullOrUndefined (Int) , "TimeDelaySeconds" :: NullOrUndefined.NullOrUndefined (Int) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Whitelist" :: NullOrUndefined.NullOrUndefined (ListOf__string) } ) -> UpdateOriginEndpointResponse
newUpdateOriginEndpointResponse'  customize = (UpdateOriginEndpointResponse <<< customize) { "Arn": (NullOrUndefined Nothing), "ChannelId": (NullOrUndefined Nothing), "DashPackage": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HlsPackage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ManifestName": (NullOrUndefined Nothing), "MssPackage": (NullOrUndefined Nothing), "StartoverWindowSeconds": (NullOrUndefined Nothing), "TimeDelaySeconds": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Whitelist": (NullOrUndefined Nothing) }

