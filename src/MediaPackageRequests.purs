
module AWS.MediaPackage.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MediaPackage as MediaPackage
import AWS.MediaPackage.Types as MediaPackageTypes


-- | Creates a new Channel.
createChannel :: forall eff. MediaPackage.Service -> MediaPackageTypes.CreateChannelRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.CreateChannelResponse
createChannel (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createChannel"


-- | Creates a new OriginEndpoint record.
createOriginEndpoint :: forall eff. MediaPackage.Service -> MediaPackageTypes.CreateOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.CreateOriginEndpointResponse
createOriginEndpoint (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createOriginEndpoint"


-- | Deletes an existing Channel.
deleteChannel :: forall eff. MediaPackage.Service -> MediaPackageTypes.DeleteChannelRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.DeleteChannelResponse
deleteChannel (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteChannel"


-- | Deletes an existing OriginEndpoint.
deleteOriginEndpoint :: forall eff. MediaPackage.Service -> MediaPackageTypes.DeleteOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.DeleteOriginEndpointResponse
deleteOriginEndpoint (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteOriginEndpoint"


-- | Gets details about a Channel.
describeChannel :: forall eff. MediaPackage.Service -> MediaPackageTypes.DescribeChannelRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.DescribeChannelResponse
describeChannel (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeChannel"


-- | Gets details about an existing OriginEndpoint.
describeOriginEndpoint :: forall eff. MediaPackage.Service -> MediaPackageTypes.DescribeOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.DescribeOriginEndpointResponse
describeOriginEndpoint (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeOriginEndpoint"


-- | Returns a collection of Channels.
listChannels :: forall eff. MediaPackage.Service -> MediaPackageTypes.ListChannelsRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.ListChannelsResponse
listChannels (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listChannels"


-- | Returns a collection of OriginEndpoint records.
listOriginEndpoints :: forall eff. MediaPackage.Service -> MediaPackageTypes.ListOriginEndpointsRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.ListOriginEndpointsResponse
listOriginEndpoints (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listOriginEndpoints"


-- | Changes the Channel ingest username and password.
rotateChannelCredentials :: forall eff. MediaPackage.Service -> MediaPackageTypes.RotateChannelCredentialsRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.RotateChannelCredentialsResponse
rotateChannelCredentials (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rotateChannelCredentials"


-- | Updates an existing Channel.
updateChannel :: forall eff. MediaPackage.Service -> MediaPackageTypes.UpdateChannelRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.UpdateChannelResponse
updateChannel (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateChannel"


-- | Updates an existing OriginEndpoint.
updateOriginEndpoint :: forall eff. MediaPackage.Service -> MediaPackageTypes.UpdateOriginEndpointRequest -> Aff (exception :: EXCEPTION | eff) MediaPackageTypes.UpdateOriginEndpointResponse
updateOriginEndpoint (MediaPackage.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateOriginEndpoint"
