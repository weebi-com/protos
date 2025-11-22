# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [common/address.proto](#common_address-proto)
    - [Address](#weebi-common-address-Address)
  
- [common/chained_ids.proto](#common_chained_ids-proto)
    - [BoutiqueIndexAndDeviceIndex](#weebi-common-chained_ids-BoutiqueIndexAndDeviceIndex)
    - [ChainIdAndboutiqueId](#weebi-common-chained_ids-ChainIdAndboutiqueId)
  
- [common/country.proto](#common_country-proto)
    - [Country](#weebi-common-country-Country)
  
- [common/empty.proto](#common_empty-proto)
    - [Empty](#weebi-common-empty-Empty)
  
- [common/g_common.proto](#common_g_common-proto)
    - [HealthCheckResponse](#google-retail-common-HealthCheckResponse)
    - [StatusResponse](#google-retail-common-StatusResponse)
  
    - [HealthCheckResponse.ServingStatus](#google-retail-common-HealthCheckResponse-ServingStatus)
    - [StatusResponse.Type](#google-retail-common-StatusResponse-Type)
  
    - [Status](#google-retail-common-Status)
  
- [common/g_timestamp.proto](#common_g_timestamp-proto)
    - [Timestamp](#google-protobuf-Timestamp)
  
- [common/phone.proto](#common_phone-proto)
    - [Phone](#weebi-common-phone-Phone)
  
- [article/article.proto](#article_article-proto)
    - [ArticleBasketOnTicketPb](#weebi-article-ArticleBasketOnTicketPb)
    - [ArticleBasketPb](#weebi-article-ArticleBasketPb)
    - [ArticleId](#weebi-article-ArticleId)
    - [ArticleRetailOnTicketPb](#weebi-article-ArticleRetailOnTicketPb)
    - [ArticleRetailPb](#weebi-article-ArticleRetailPb)
    - [ArticleUncountableOnTicketPb](#weebi-article-ArticleUncountableOnTicketPb)
    - [ArticleUncountablePb](#weebi-article-ArticleUncountablePb)
    - [CalibreMongo](#weebi-article-CalibreMongo)
    - [CalibreMongo.AdditionalAttributesEntry](#weebi-article-CalibreMongo-AdditionalAttributesEntry)
    - [CalibrePb](#weebi-article-CalibrePb)
    - [ProxyArticlePb](#weebi-article-ProxyArticlePb)
  
    - [ArticleKindPb](#weebi-article-ArticleKindPb)
    - [CalibrePb.StockUnit](#weebi-article-CalibrePb-StockUnit)
  
- [article/article_service.proto](#article_article_service-proto)
    - [CalibreRequest](#weebi-article-service-CalibreRequest)
    - [CalibresIdsResponse](#weebi-article-service-CalibresIdsResponse)
    - [CalibresRequest](#weebi-article-service-CalibresRequest)
    - [CalibresResponse](#weebi-article-service-CalibresResponse)
    - [CategoriesResponse](#weebi-article-service-CategoriesResponse)
    - [CategoryRequest](#weebi-article-service-CategoryRequest)
    - [FindCategoryRequest](#weebi-article-service-FindCategoryRequest)
    - [FindPhotoRequest](#weebi-article-service-FindPhotoRequest)
    - [PhotoRequest](#weebi-article-service-PhotoRequest)
    - [PhotosRequest](#weebi-article-service-PhotosRequest)
    - [PhotosResponse](#weebi-article-service-PhotosResponse)
    - [ReadAllRequest](#weebi-article-service-ReadAllRequest)
    - [ReadCalibreRequest](#weebi-article-service-ReadCalibreRequest)
    - [ReadCategoriesRequest](#weebi-article-service-ReadCategoriesRequest)
    - [ReadIdsRequest](#weebi-article-service-ReadIdsRequest)
    - [ReadPhotosRequest](#weebi-article-service-ReadPhotosRequest)
  
    - [ArticleService](#weebi-article-service-ArticleService)
  
- [article/category.proto](#article_category-proto)
    - [CategoryMongo](#weebi-category-CategoryMongo)
    - [CategoryPb](#weebi-category-CategoryPb)
  
- [article/photo.proto](#article_photo-proto)
    - [ArticlePhotoMongo](#weebi-photo-ArticlePhotoMongo)
    - [ArticlePhotoPb](#weebi-photo-ArticlePhotoPb)
  
    - [ArticlePhotoPb.ExtensionPb](#weebi-photo-ArticlePhotoPb-ExtensionPb)
  
- [contact/contact.proto](#contact_contact-proto)
    - [ContactMongo](#weebi-contact-ContactMongo)
    - [ContactMongo.AdditionalAttributesEntry](#weebi-contact-ContactMongo-AdditionalAttributesEntry)
    - [ContactPb](#weebi-contact-ContactPb)
    - [ContactPb.OthersAttributesEntry](#weebi-contact-ContactPb-OthersAttributesEntry)
  
- [contact/contact_service.proto](#contact_contact_service-proto)
    - [ContactRequest](#weebi-contact-service-ContactRequest)
    - [ContactsIdsResponse](#weebi-contact-service-ContactsIdsResponse)
    - [ContactsRequest](#weebi-contact-service-ContactsRequest)
    - [ContactsResponse](#weebi-contact-service-ContactsResponse)
    - [ReadAllContactsRequest](#weebi-contact-service-ReadAllContactsRequest)
    - [ReadContactRequest](#weebi-contact-service-ReadContactRequest)
    - [ReadContactsIdsRequest](#weebi-contact-service-ReadContactsIdsRequest)
  
    - [ContactService](#weebi-contact-service-ContactService)
  
- [ticket/ticket.proto](#ticket_ticket-proto)
    - [Counterfoil](#weebi-ticket-Counterfoil)
    - [ItemCartPb](#weebi-ticket-ItemCartPb)
    - [ProxyArticleWorthPb](#weebi-ticket-ProxyArticleWorthPb)
    - [TaxPb](#weebi-ticket-TaxPb)
    - [TicketMongo](#weebi-ticket-TicketMongo)
    - [TicketMongo.AdditionalAttributesEntry](#weebi-ticket-TicketMongo-AdditionalAttributesEntry)
    - [TicketPb](#weebi-ticket-TicketPb)
  
    - [TicketPb.PaymentTypePb](#weebi-ticket-TicketPb-PaymentTypePb)
  
- [ticket/ticket_service.proto](#ticket_ticket_service-proto)
    - [FindTicketRequest](#weebi-ticket-service-FindTicketRequest)
    - [ReadAllTicketsRequest](#weebi-ticket-service-ReadAllTicketsRequest)
    - [TicketRequest](#weebi-ticket-service-TicketRequest)
    - [TicketsRequest](#weebi-ticket-service-TicketsRequest)
    - [TicketsResponse](#weebi-ticket-service-TicketsResponse)
  
    - [TicketService](#weebi-ticket-service-TicketService)
  
- [ticket/ticket_type.proto](#ticket_ticket_type-proto)
    - [TicketTypePb](#weebi-ticket_type-TicketTypePb)
  
- [boutique.proto](#boutique-proto)
    - [BoutiqueMongo](#weebi-boutique-BoutiqueMongo)
    - [BoutiqueMongo.AdditionalAttributesEntry](#weebi-boutique-BoutiqueMongo-AdditionalAttributesEntry)
    - [BoutiquePb](#weebi-boutique-BoutiquePb)
    - [BoutiquePb.AdditionalAttributesEntry](#weebi-boutique-BoutiquePb-AdditionalAttributesEntry)
  
- [btq_chain.proto](#btq_chain-proto)
    - [Chain](#weebi-chain-Chain)
    - [Chains](#weebi-chain-Chains)
  
- [device.proto](#device-proto)
    - [Device](#weebi-device-Device)
    - [Devices](#weebi-device-Devices)
    - [HardwareInfo](#weebi-device-HardwareInfo)
  
- [fence_service.proto](#fence_service-proto)
    - [Access](#weebi-fence-service-Access)
    - [ApproveDeviceRequest](#weebi-fence-service-ApproveDeviceRequest)
    - [BoutiqueRequest](#weebi-fence-service-BoutiqueRequest)
    - [BoutiqueResponse](#weebi-fence-service-BoutiqueResponse)
    - [ChainRequest](#weebi-fence-service-ChainRequest)
    - [CodeForPairingDevice](#weebi-fence-service-CodeForPairingDevice)
    - [CreateDeviceResponse](#weebi-fence-service-CreateDeviceResponse)
    - [Credentials](#weebi-fence-service-Credentials)
    - [DeleteDeviceRequest](#weebi-fence-service-DeleteDeviceRequest)
    - [DeviceCredentials](#weebi-fence-service-DeviceCredentials)
    - [HealthCheckWeebiResponse](#weebi-fence-service-HealthCheckWeebiResponse)
    - [IsADeviceInChainResponse](#weebi-fence-service-IsADeviceInChainResponse)
    - [MailAndEncyptedPassword](#weebi-fence-service-MailAndEncyptedPassword)
    - [MarkEmailVerifiedRequest](#weebi-fence-service-MarkEmailVerifiedRequest)
    - [PasswordResetConfirmRequest](#weebi-fence-service-PasswordResetConfirmRequest)
    - [PasswordResetRequest](#weebi-fence-service-PasswordResetRequest)
    - [PasswordUpdateRequest](#weebi-fence-service-PasswordUpdateRequest)
    - [PendingDeviceRequest](#weebi-fence-service-PendingDeviceRequest)
    - [ReadAllBoutiquesResponse](#weebi-fence-service-ReadAllBoutiquesResponse)
    - [ReadAllChainsResponse](#weebi-fence-service-ReadAllChainsResponse)
    - [ReadDeviceBtqRequest](#weebi-fence-service-ReadDeviceBtqRequest)
    - [ReadDevicesRequest](#weebi-fence-service-ReadDevicesRequest)
    - [ReadOneUserResponse](#weebi-fence-service-ReadOneUserResponse)
    - [RefreshToken](#weebi-fence-service-RefreshToken)
    - [ServiceVersions](#weebi-fence-service-ServiceVersions)
    - [Tokens](#weebi-fence-service-Tokens)
    - [UpdateDevicePasswordRequest](#weebi-fence-service-UpdateDevicePasswordRequest)
    - [UpdateSubscriberIdRequest](#weebi-fence-service-UpdateSubscriberIdRequest)
    - [UserId](#weebi-fence-service-UserId)
    - [UsersPublic](#weebi-fence-service-UsersPublic)
  
    - [FenceService](#weebi-fence-service-FenceService)
  
- [firm.proto](#firm-proto)
    - [CreateFirmRequest](#weebi-firm-CreateFirmRequest)
    - [CreateFirmResponse](#weebi-firm-CreateFirmResponse)
    - [Firm](#weebi-firm-Firm)
  
- [user.proto](#user-proto)
    - [PendingUserRequest](#weebi-user-PendingUserRequest)
    - [PendingUserRequest.OthersAttributesEntry](#weebi-user-PendingUserRequest-OthersAttributesEntry)
    - [PendingUserResponse](#weebi-user-PendingUserResponse)
    - [SignUpRequest](#weebi-user-SignUpRequest)
    - [SignUpResponse](#weebi-user-SignUpResponse)
    - [UserPrivate](#weebi-user-UserPrivate)
    - [UserPrivate.OthersAttributesEntry](#weebi-user-UserPrivate-OthersAttributesEntry)
    - [UserPublic](#weebi-user-UserPublic)
    - [UserPublic.OthersAttributesEntry](#weebi-user-UserPublic-OthersAttributesEntry)
  
- [user_permissions.proto](#user_permissions-proto)
    - [AccessFull](#weebi-user-permissions-AccessFull)
    - [AccessLimited](#weebi-user-permissions-AccessLimited)
    - [ArticleRights](#weebi-user-permissions-ArticleRights)
    - [BillingRights](#weebi-user-permissions-BillingRights)
    - [BoolRights](#weebi-user-permissions-BoolRights)
    - [BoutiqueIds](#weebi-user-permissions-BoutiqueIds)
    - [BoutiqueRights](#weebi-user-permissions-BoutiqueRights)
    - [ChainIds](#weebi-user-permissions-ChainIds)
    - [ChainRights](#weebi-user-permissions-ChainRights)
    - [ContactRights](#weebi-user-permissions-ContactRights)
    - [FirmRights](#weebi-user-permissions-FirmRights)
    - [TicketRights](#weebi-user-permissions-TicketRights)
    - [UserManagementRights](#weebi-user-permissions-UserManagementRights)
    - [UserPermissions](#weebi-user-permissions-UserPermissions)
  
    - [Right](#weebi-user-permissions-Right)
  
- [weebi_app_service.proto](#weebi_app_service-proto)
    - [AppMinVersionRequest](#weebi-weebi_app-service-AppMinVersionRequest)
    - [AppMinVersionResponse](#weebi-weebi_app-service-AppMinVersionResponse)
  
    - [WeebiAppService](#weebi-weebi_app-service-WeebiAppService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="common_address-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/address.proto



<a name="weebi-common-address-Address"></a>

### Address



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| street | [string](#string) |  |  |
| code | [string](#string) |  |  |
| city | [string](#string) |  |  |
| country | [weebi.common.country.Country](#weebi-common-country-Country) |  |  |
| latitude | [double](#double) |  | optional |
| longitude | [double](#double) |  | optional |





 

 

 

 



<a name="common_chained_ids-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/chained_ids.proto



<a name="weebi-common-chained_ids-BoutiqueIndexAndDeviceIndex"></a>

### BoutiqueIndexAndDeviceIndex



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| boutiqueIndex | [int32](#int32) |  |  |
| deviceIndex | [int32](#int32) |  |  |






<a name="weebi-common-chained_ids-ChainIdAndboutiqueId"></a>

### ChainIdAndboutiqueId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |





 

 

 

 



<a name="common_country-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/country.proto



<a name="weebi-common-country-Country"></a>

### Country



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code2Letters | [string](#string) |  |  |
| namel10n | [string](#string) |  |  |





 

 

 

 



<a name="common_empty-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/empty.proto



<a name="weebi-common-empty-Empty"></a>

### Empty






 

 

 

 



<a name="common_g_common-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/g_common.proto
Copyright 2022 Google LLC

Licensed under the Apache License, Version 2.0 (the &#34;License&#34;);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an &#34;AS IS&#34; BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


<a name="google-retail-common-HealthCheckResponse"></a>

### HealthCheckResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [HealthCheckResponse.ServingStatus](#google-retail-common-HealthCheckResponse-ServingStatus) |  |  |






<a name="google-retail-common-StatusResponse"></a>

### StatusResponse
A transfer object suitable for stream and non-stream error


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | google.protobuf.Timestamp |
| type | [StatusResponse.Type](#google-retail-common-StatusResponse-Type) |  |  |
| id | [string](#string) |  |  |
| message | [string](#string) |  | The original payload is used in the error response for clients that MUST implement a backoff / replay. This is consistent with Cloud SLOs google.protobuf.Struct payload = 5 [json_name = &#39;payload&#39;]; |





 


<a name="google-retail-common-HealthCheckResponse-ServingStatus"></a>

### HealthCheckResponse.ServingStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN | 0 |  |
| SERVING | 1 |  |
| NOT_SERVING | 2 |  |
| SERVICE_UNKNOWN | 3 | Used only by the Watch method. |



<a name="google-retail-common-StatusResponse-Type"></a>

### StatusResponse.Type


| Name | Number | Description |
| ---- | ------ | ----------- |
| SUCCESS | 0 |  |
| ERROR | 1 |  |
| CREATED | 2 |  |
| UPDATED | 3 |  |
| DELETED | 4 |  |


 

 


<a name="google-retail-common-Status"></a>

### Status


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [.weebi.common.empty.Empty](#weebi-common-empty-Empty) | [HealthCheckResponse](#google-retail-common-HealthCheckResponse) | Gets service status

{ option (google.api.http) = { get: &#34;/api/v1/status&#34; }; } |

 



<a name="common_g_timestamp-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/g_timestamp.proto



<a name="google-protobuf-Timestamp"></a>

### Timestamp
A Timestamp represents a point in time independent of any time zone or local
calendar, encoded as a count of seconds and fractions of seconds at
nanosecond resolution. The count is relative to an epoch at UTC midnight on
January 1, 1970, in the proleptic Gregorian calendar which extends the
Gregorian calendar backwards to year one.

All minutes are 60 seconds long. Leap seconds are &#34;smeared&#34; so that no leap
second table is needed for interpretation, using a [24-hour linear
smear](https://developers.google.com/time/smear).

The range is from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By
restricting to that range, we ensure that we can convert to and from [RFC
3339](https://www.ietf.org/rfc/rfc3339.txt) date strings.

# Examples

Example 1: Compute Timestamp from POSIX `time()`.

    Timestamp timestamp;
    timestamp.set_seconds(time(NULL));
    timestamp.set_nanos(0);

Example 2: Compute Timestamp from POSIX `gettimeofday()`.

    struct timeval tv;
    gettimeofday(&amp;tv, NULL);

    Timestamp timestamp;
    timestamp.set_seconds(tv.tv_sec);
    timestamp.set_nanos(tv.tv_usec * 1000);

Example 3: Compute Timestamp from Win32 `GetSystemTimeAsFileTime()`.

    FILETIME ft;
    GetSystemTimeAsFileTime(&amp;ft);
    UINT64 ticks = (((UINT64)ft.dwHighDateTime) &lt;&lt; 32) | ft.dwLowDateTime;

    // A Windows tick is 100 nanoseconds. Windows epoch 1601-01-01T00:00:00Z
    // is 11644473600 seconds before Unix epoch 1970-01-01T00:00:00Z.
    Timestamp timestamp;
    timestamp.set_seconds((INT64) ((ticks / 10000000) - 11644473600LL));
    timestamp.set_nanos((INT32) ((ticks % 10000000) * 100));

Example 4: Compute Timestamp from Java `System.currentTimeMillis()`.

    long millis = System.currentTimeMillis();

    Timestamp timestamp = Timestamp.newBuilder().setSeconds(millis / 1000)
        .setNanos((int) ((millis % 1000) * 1000000)).build();

Example 5: Compute Timestamp from Java `Instant.now()`.

    Instant now = Instant.now();

    Timestamp timestamp =
        Timestamp.newBuilder().setSeconds(now.getEpochSecond())
            .setNanos(now.getNano()).build();

Example 6: Compute Timestamp from current time in Python.

    timestamp = Timestamp()
    timestamp.GetCurrentTime()

# JSON Mapping

In JSON format, the Timestamp type is encoded as a string in the
[RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format. That is, the
format is &#34;{year}-{month}-{day}T{hour}:{min}:{sec}[.{frac_sec}]Z&#34;
where {year} is always expressed using four digits while {month}, {day},
{hour}, {min}, and {sec} are zero-padded to two digits each. The fractional
seconds, which can go up to 9 digits (i.e. up to 1 nanosecond resolution),
are optional. The &#34;Z&#34; suffix indicates the timezone (&#34;UTC&#34;); the timezone
is required. A proto3 JSON serializer should always use UTC (as indicated by
&#34;Z&#34;) when printing the Timestamp type and a proto3 JSON parser should be
able to accept both UTC and other timezones (as indicated by an offset).

For example, &#34;2017-01-15T01:30:15.01Z&#34; encodes 15.01 seconds past
01:30 UTC on January 15, 2017.

In JavaScript, one can convert a Date object to this format using the
standard
[toISOString()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toISOString)
method. In Python, a standard `datetime.datetime` object can be converted
to this format using
[`strftime`](https://docs.python.org/2/library/time.html#time.strftime) with
the time format spec &#39;%Y-%m-%dT%H:%M:%S.%fZ&#39;. Likewise, in Java, one can use
the Joda Time&#39;s [`ISODateTimeFormat.dateTime()`](
http://joda-time.sourceforge.net/apidocs/org/joda/time/format/ISODateTimeFormat.html#dateTime()
) to obtain a formatter capable of generating timestamps in this format.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seconds | [int64](#int64) |  | Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive. |
| nanos | [int32](#int32) |  | Non-negative fractions of a second at nanosecond resolution. Negative second values with fractions must still have non-negative nanos values that count forward in time. Must be from 0 to 999,999,999 inclusive. |





 

 

 

 



<a name="common_phone-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/phone.proto



<a name="weebi-common-phone-Phone"></a>

### Phone



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| countryCode | [int32](#int32) |  |  |
| number | [string](#string) |  |  |





 

 

 

 



<a name="article_article-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## article/article.proto



<a name="weebi-article-ArticleBasketOnTicketPb"></a>

### ArticleBasketOnTicketPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| designation | [string](#string) |  |  |
| proxies | [ProxyArticlePb](#weebi-article-ProxyArticlePb) | repeated |  |
| discountAmount | [double](#double) |  |  |
| markupAmount | [double](#double) |  | no need to mention kind here, each items has a specific attribute |






<a name="weebi-article-ArticleBasketPb"></a>

### ArticleBasketPb
a basket of several articles,  a basket cannot contain other baskets


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| designation | [string](#string) |  |  |
| kind | [ArticleKindPb](#weebi-article-ArticleKindPb) |  |  |
| status | [bool](#bool) |  |  |
| codeShortcut | [int32](#int32) |  | **Deprecated.**  |
| creationDate | [string](#string) |  |  |
| updateDate | [string](#string) |  |  |
| statusUpdateDate | [string](#string) |  |  |
| proxies | [ProxyArticlePb](#weebi-article-ProxyArticlePb) | repeated |  |
| discountAmount | [double](#double) |  |  |
| markupAmount | [double](#double) |  |  |






<a name="weebi-article-ArticleId"></a>

### ArticleId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |






<a name="weebi-article-ArticleRetailOnTicketPb"></a>

### ArticleRetailOnTicketPb
default type of article shortened on ticket


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| designation | [string](#string) |  |  |
| price | [double](#double) |  |  |
| cost | [double](#double) |  |  |
| unitsInOnePiece | [double](#double) |  | no need to mention kind here, each items has a specific attribute |






<a name="weebi-article-ArticleRetailPb"></a>

### ArticleRetailPb
default type of article


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| designation | [string](#string) |  |  |
| kind | [ArticleKindPb](#weebi-article-ArticleKindPb) |  |  |
| status | [bool](#bool) |  |  |
| codeShortcut | [int32](#int32) |  | **Deprecated.**  |
| creationDate | [string](#string) |  |  |
| updateDate | [string](#string) |  |  |
| statusUpdateDate | [string](#string) |  |  |
| price | [double](#double) |  |  |
| cost | [double](#double) |  |  |
| unitsInOnePiece | [double](#double) |  |  |
| barcodeEAN | [string](#string) |  |  |






<a name="weebi-article-ArticleUncountableOnTicketPb"></a>

### ArticleUncountableOnTicketPb
article uncountable only has price and cost on ticket when it cas assigned


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| designation | [string](#string) |  |  |
| price | [double](#double) |  |  |
| cost | [double](#double) |  | no need to mention kind here, each items has a specific attribute |






<a name="weebi-article-ArticleUncountablePb"></a>

### ArticleUncountablePb
article uncountable / out of catalog, exemple : electricity bill (-) or grant (&#43;)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| designation | [string](#string) |  |  |
| kind | [ArticleKindPb](#weebi-article-ArticleKindPb) |  |  |
| status | [bool](#bool) |  |  |
| codeShortcut | [int32](#int32) |  | **Deprecated.**  |
| creationDate | [string](#string) |  |  |
| updateDate | [string](#string) |  |  |
| statusUpdateDate | [string](#string) |  |  |
| price | [double](#double) |  |  |
| cost | [double](#double) |  |  |
| unitsInOnePiece | [double](#double) |  |  |
| barcodeEAN | [string](#string) |  |  |






<a name="weebi-article-CalibreMongo"></a>

### CalibreMongo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibre | [CalibrePb](#weebi-article-CalibrePb) |  | faster object read |
| calibreId | [int32](#int32) |  | unique id |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| userId | [string](#string) |  |  |
| creationDate | [string](#string) |  |  |
| lastTouchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| additional_attributes | [CalibreMongo.AdditionalAttributesEntry](#weebi-article-CalibreMongo-AdditionalAttributesEntry) | repeated |  |






<a name="weebi-article-CalibreMongo-AdditionalAttributesEntry"></a>

### CalibreMongo.AdditionalAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="weebi-article-CalibrePb"></a>

### CalibrePb
Wrapping articles, using Pb to differentiate from Calibre Dart in models weebi


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  |  |
| creationDate | [string](#string) |  |  |
| updateDate | [string](#string) |  |  |
| statusUpdateDate | [string](#string) |  |  |
| status | [bool](#bool) |  |  |
| title | [string](#string) |  |  |
| stockUnit | [CalibrePb.StockUnit](#weebi-article-CalibrePb-StockUnit) |  |  |
| kind | [ArticleKindPb](#weebi-article-ArticleKindPb) |  |  |
| articlesRetail | [ArticleRetailPb](#weebi-article-ArticleRetailPb) | repeated |  |
| articlesBasket | [ArticleBasketPb](#weebi-article-ArticleBasketPb) | repeated |  |
| articlesUncountable | [ArticleUncountablePb](#weebi-article-ArticleUncountablePb) | repeated |  |






<a name="weebi-article-ProxyArticlePb"></a>

### ProxyArticlePb
each article included in the ArticleBasket is referenced using the proxy


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| articleId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| status | [bool](#bool) |  |  |
| proxyCalibreId | [int32](#int32) |  |  |
| proxyArticleId | [int32](#int32) |  |  |
| minimumUnitPerBasket | [double](#double) |  |  |
| articleWeight | [double](#double) |  |  |





 


<a name="weebi-article-ArticleKindPb"></a>

### ArticleKindPb


| Name | Number | Description |
| ---- | ------ | ----------- |
| unknown | 0 |  |
| retail | 1 |  |
| basket | 2 |  |
| uncountable | 3 |  |



<a name="weebi-article-CalibrePb-StockUnit"></a>

### CalibrePb.StockUnit


| Name | Number | Description |
| ---- | ------ | ----------- |
| unknown | 0 |  |
| centiliter | 1 |  |
| centimeter | 2 |  |
| gram | 3 |  |
| kilogram | 4 |  |
| liter | 5 |  |
| meter | 6 |  |
| unit | 7 |  |


 

 

 



<a name="article_article_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## article/article_service.proto



<a name="weebi-article-service-CalibreRequest"></a>

### CalibreRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  | below in case mutiple chains, permission check will still be applied to verify |
| calibre | [weebi.article.CalibrePb](#weebi-article-CalibrePb) |  |  |






<a name="weebi-article-service-CalibresIdsResponse"></a>

### CalibresIdsResponse
include all ids so that offline device can delete objects removed by another user/device


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ids | [int32](#int32) | repeated |  |






<a name="weebi-article-service-CalibresRequest"></a>

### CalibresRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  | below in case mutiple chains, permission check will still be applied to verify |
| calibres | [weebi.article.CalibrePb](#weebi-article-CalibrePb) | repeated |  |






<a name="weebi-article-service-CalibresResponse"></a>

### CalibresResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibres | [weebi.article.CalibrePb](#weebi-article-CalibrePb) | repeated |  |






<a name="weebi-article-service-CategoriesResponse"></a>

### CategoriesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| categories | [weebi.category.CategoryPb](#weebi-category-CategoryPb) | repeated |  |






<a name="weebi-article-service-CategoryRequest"></a>

### CategoryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  | below in case mutiple chains, permission check will still be applied to verify |
| category | [weebi.category.CategoryPb](#weebi-category-CategoryPb) |  |  |






<a name="weebi-article-service-FindCategoryRequest"></a>

### FindCategoryRequest
categories


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| title | [string](#string) |  |  |






<a name="weebi-article-service-FindPhotoRequest"></a>

### FindPhotoRequest
Photos


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| calibreId | [string](#string) |  |  |
| id | [string](#string) |  |  |






<a name="weebi-article-service-PhotoRequest"></a>

### PhotoRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| photo | [weebi.photo.ArticlePhotoPb](#weebi-photo-ArticlePhotoPb) |  |  |






<a name="weebi-article-service-PhotosRequest"></a>

### PhotosRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| photos | [weebi.photo.ArticlePhotoPb](#weebi-photo-ArticlePhotoPb) | repeated |  |






<a name="weebi-article-service-PhotosResponse"></a>

### PhotosResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| photos | [weebi.photo.ArticlePhotoPb](#weebi-photo-ArticlePhotoPb) | repeated |  |
| total | [int32](#int32) |  |  |
| offset | [int32](#int32) |  |  |
| hasMore | [bool](#bool) |  | More photos available? |
| batchSize | [int32](#int32) |  |  |






<a name="weebi-article-service-ReadAllRequest"></a>

### ReadAllRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| lastFetchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | optional used for weebi_app device back online |






<a name="weebi-article-service-ReadCalibreRequest"></a>

### ReadCalibreRequest
A Calibre includes Articles


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| title | [string](#string) |  |  |
| calibreId | [int32](#int32) |  |  |






<a name="weebi-article-service-ReadCategoriesRequest"></a>

### ReadCategoriesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |






<a name="weebi-article-service-ReadIdsRequest"></a>

### ReadIdsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |






<a name="weebi-article-service-ReadPhotosRequest"></a>

### ReadPhotosRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| lastFetchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| offset | [int32](#int32) |  | Starting position (default 0) |
| limit | [int32](#int32) |  | Batch size (default 100) |





 

 

 


<a name="weebi-article-service-ArticleService"></a>

### ArticleService
articles are contained in calibres
/ we keep article as the service name for clarity
/ but the list of objects are Calibres and we use calibreId

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| createOne | [CalibreRequest](#weebi-article-service-CalibreRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| createMany | [CalibresRequest](#weebi-article-service-CalibresRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| readOne | [ReadCalibreRequest](#weebi-article-service-ReadCalibreRequest) | [.weebi.article.CalibrePb](#weebi-article-CalibrePb) |  |
| readAll | [ReadAllRequest](#weebi-article-service-ReadAllRequest) | [CalibresResponse](#weebi-article-service-CalibresResponse) | use [lastFetchTimestampUTC] to only read the latest changes since last fetch |
| readAllIds | [ReadIdsRequest](#weebi-article-service-ReadIdsRequest) | [CalibresIdsResponse](#weebi-article-service-CalibresIdsResponse) |  |
| updateOne | [CalibreRequest](#weebi-article-service-CalibreRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | update == upsert (replaceOne upsert) |
| deleteOne | [CalibreRequest](#weebi-article-service-CalibreRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | hard delete |
| createOneCategory | [CategoryRequest](#weebi-article-service-CategoryRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | category / |
| readOneCategory | [FindCategoryRequest](#weebi-article-service-FindCategoryRequest) | [.weebi.category.CategoryPb](#weebi-category-CategoryPb) |  |
| readAllCategories | [ReadCategoriesRequest](#weebi-article-service-ReadCategoriesRequest) | [CategoriesResponse](#weebi-article-service-CategoriesResponse) |  |
| updateOneCategory | [CategoryRequest](#weebi-article-service-CategoryRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | upsert works with replaceOne upsert true |
| deleteOneCategory | [CategoryRequest](#weebi-article-service-CategoryRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| createOnePhoto | [PhotoRequest](#weebi-article-service-PhotoRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | photo / |
| createManyPhotos | [PhotosRequest](#weebi-article-service-PhotosRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| readOnePhoto | [FindPhotoRequest](#weebi-article-service-FindPhotoRequest) | [.weebi.photo.ArticlePhotoPb](#weebi-photo-ArticlePhotoPb) |  |
| readAllPhotos | [ReadPhotosRequest](#weebi-article-service-ReadPhotosRequest) | [PhotosResponse](#weebi-article-service-PhotosResponse) | use [lastFetchTimestampUTC] to only read the latest changes since last fetch |
| updateOnePhoto | [PhotoRequest](#weebi-article-service-PhotoRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | upsert |
| deleteOnePhoto | [PhotoRequest](#weebi-article-service-PhotoRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |

 



<a name="article_category-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## article/category.proto



<a name="weebi-category-CategoryMongo"></a>

### CategoryMongo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| firmId | [string](#string) |  | faster object read |
| chainId | [string](#string) |  |  |
| userId | [string](#string) |  |  |
| title | [string](#string) |  |  |
| category | [CategoryPb](#weebi-category-CategoryPb) |  |  |
| lastTouchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="weebi-category-CategoryPb"></a>

### CategoryPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibresIds | [uint32](#uint32) | repeated |  |
| title | [string](#string) |  |  |
| color | [uint64](#uint64) |  |  |
| creationDate | [string](#string) |  |  |
| updateDate | [string](#string) |  |  |





 

 

 

 



<a name="article_photo-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## article/photo.proto



<a name="weebi-photo-ArticlePhotoMongo"></a>

### ArticlePhotoMongo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| userId | [string](#string) |  |  |
| calibreId | [int32](#int32) |  |  |
| photo | [ArticlePhotoPb](#weebi-photo-ArticlePhotoPb) |  |  |
| lastTouchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="weebi-photo-ArticlePhotoPb"></a>

### ArticlePhotoPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| data | [bytes](#bytes) |  |  |
| extension | [ArticlePhotoPb.ExtensionPb](#weebi-photo-ArticlePhotoPb-ExtensionPb) |  |  |





 


<a name="weebi-photo-ArticlePhotoPb-ExtensionPb"></a>

### ArticlePhotoPb.ExtensionPb


| Name | Number | Description |
| ---- | ------ | ----------- |
| unknown | 0 |  |
| png | 1 |  |
| jpeg | 2 |  |


 

 

 



<a name="contact_contact-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## contact/contact.proto



<a name="weebi-contact-ContactMongo"></a>

### ContactMongo
contactId is unique


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contact | [ContactPb](#weebi-contact-ContactPb) |  |  |
| contactId | [int32](#int32) |  | unique id |
| userId | [string](#string) |  |  |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| creationDate | [string](#string) |  |  |
| lastTouchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| additional_attributes | [ContactMongo.AdditionalAttributesEntry](#weebi-contact-ContactMongo-AdditionalAttributesEntry) | repeated |  |






<a name="weebi-contact-ContactMongo-AdditionalAttributesEntry"></a>

### ContactMongo.AdditionalAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="weebi-contact-ContactPb"></a>

### ContactPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  |  |
| creationDate | [string](#string) |  |  |
| updateDate | [string](#string) |  |  |
| statusUpdateDate | [string](#string) |  |  |
| status | [bool](#bool) |  |  |
| firstName | [string](#string) |  |  |
| lastName | [string](#string) |  |  |
| mail | [string](#string) |  |  |
| phone | [weebi.common.phone.Phone](#weebi-common-phone-Phone) |  |  |
| addressFull | [weebi.common.address.Address](#weebi-common-address-Address) |  |  |
| overdraft | [int64](#int64) |  | legacy intt32 might be an issue |
| tags | [string](#string) | repeated |  |
| isClient | [bool](#bool) |  |  |
| isSupplier | [bool](#bool) |  |  |
| othersAttributes | [ContactPb.OthersAttributesEntry](#weebi-contact-ContactPb-OthersAttributesEntry) | repeated |  |






<a name="weebi-contact-ContactPb-OthersAttributesEntry"></a>

### ContactPb.OthersAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |





 

 

 

 



<a name="contact_contact_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## contact/contact_service.proto



<a name="weebi-contact-service-ContactRequest"></a>

### ContactRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| contact | [weebi.contact.ContactPb](#weebi-contact-ContactPb) |  |  |






<a name="weebi-contact-service-ContactsIdsResponse"></a>

### ContactsIdsResponse
include all ids so that offline device can delete objects removed by another user/device


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ids | [int32](#int32) | repeated |  |






<a name="weebi-contact-service-ContactsRequest"></a>

### ContactsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| contacts | [weebi.contact.ContactPb](#weebi-contact-ContactPb) | repeated |  |






<a name="weebi-contact-service-ContactsResponse"></a>

### ContactsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contacts | [weebi.contact.ContactPb](#weebi-contact-ContactPb) | repeated |  |






<a name="weebi-contact-service-ReadAllContactsRequest"></a>

### ReadAllContactsRequest
optional used for weebi_app device back online


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| lastFetchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | optional used for weebi_app device back online |






<a name="weebi-contact-service-ReadContactRequest"></a>

### ReadContactRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contactChainId | [string](#string) |  | string firmId = 1 [json_name = &#39;firmId&#39;]; // deduced from bearer token |
| contactId | [int32](#int32) |  |  |
| firstName | [string](#string) |  | optional |
| lastName | [string](#string) |  | optional |
| mail | [string](#string) |  | optional |
| phone | [weebi.common.phone.Phone](#weebi-common-phone-Phone) |  | optional |
| address | [weebi.common.address.Address](#weebi-common-address-Address) |  | optional

will add contact created by userId someday until them below is confusing string contactUserId = 2 [json_name = &#39;contactUserId&#39;]; |






<a name="weebi-contact-service-ReadContactsIdsRequest"></a>

### ReadContactsIdsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |





 

 

 


<a name="weebi-contact-service-ContactService"></a>

### ContactService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| createOne | [ContactRequest](#weebi-contact-service-ContactRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| createMany | [ContactsRequest](#weebi-contact-service-ContactsRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| readOne | [ReadContactRequest](#weebi-contact-service-ReadContactRequest) | [.weebi.contact.ContactPb](#weebi-contact-ContactPb) | use [lastFetchTimestampUTC] to only read the latest changes since last fetch |
| readAll | [ReadAllContactsRequest](#weebi-contact-service-ReadAllContactsRequest) | [ContactsResponse](#weebi-contact-service-ContactsResponse) |  |
| readAllIds | [ReadContactsIdsRequest](#weebi-contact-service-ReadContactsIdsRequest) | [ContactsIdsResponse](#weebi-contact-service-ContactsIdsResponse) |  |
| updateOne | [ContactRequest](#weebi-contact-service-ContactRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | == upsert |
| deleteOne | [ContactRequest](#weebi-contact-service-ContactRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | hard delete |

 



<a name="ticket_ticket-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ticket/ticket.proto



<a name="weebi-ticket-Counterfoil"></a>

### Counterfoil



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| firmId | [string](#string) |  |  |
| firmName | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| chainName | [string](#string) |  |  |
| deviceId | [string](#string) |  |  |
| deviceName | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |
| boutiqueName | [string](#string) |  |  |
| userId | [string](#string) |  | userId is the user who synced the ticket, not necessarily the one who created it |
| userName | [string](#string) |  |  |






<a name="weebi-ticket-ItemCartPb"></a>

### ItemCartPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| articleRetail | [weebi.article.ArticleRetailOnTicketPb](#weebi-article-ArticleRetailOnTicketPb) |  |  |
| articleBasket | [weebi.article.ArticleBasketOnTicketPb](#weebi-article-ArticleBasketOnTicketPb) |  |  |
| articleUncountable | [weebi.article.ArticleUncountableOnTicketPb](#weebi-article-ArticleUncountableOnTicketPb) |  |  |
| quantity | [double](#double) |  |  |
| proxies_worth | [ProxyArticleWorthPb](#weebi-ticket-ProxyArticleWorthPb) | repeated |  |
| inventoryAbsoluteQt | [double](#double) |  |  |






<a name="weebi-ticket-ProxyArticleWorthPb"></a>

### ProxyArticleWorthPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| calibreId | [int32](#int32) |  |  |
| articleId | [int32](#int32) |  |  |
| id | [int32](#int32) |  |  |
| status | [bool](#bool) |  |  |
| proxyCalibreId | [int32](#int32) |  |  |
| proxyArticleId | [int32](#int32) |  |  |
| minimumUnitPerBasket | [double](#double) |  |  |
| articleWeight | [double](#double) |  |  |
| price | [double](#double) |  |  |
| cost | [double](#double) |  |  |






<a name="weebi-ticket-TaxPb"></a>

### TaxPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| percentage | [double](#double) |  |  |






<a name="weebi-ticket-TicketMongo"></a>

### TicketMongo
ticketNonUniqueId is to be combined with userId
/ local ids can lead to duplicates as each sellers from its own device can create contact


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ticket | [TicketPb](#weebi-ticket-TicketPb) |  |  |
| nonUniqueId | [int32](#int32) |  |  |
| userId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| creationDate | [string](#string) |  |  |
| lastTouchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| isDeleted | [bool](#bool) |  |  |
| contactId | [int32](#int32) |  |  |
| additional_attributes | [TicketMongo.AdditionalAttributesEntry](#weebi-ticket-TicketMongo-AdditionalAttributesEntry) | repeated |  |






<a name="weebi-ticket-TicketMongo-AdditionalAttributesEntry"></a>

### TicketMongo.AdditionalAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="weebi-ticket-TicketPb"></a>

### TicketPb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonUniqueId | [int32](#int32) |  |  |
| counterfoil | [Counterfoil](#weebi-ticket-Counterfoil) |  | different from article and contact a ticket must include a firm/chain/boutique/user the server will check they fit the permissions |
| date | [string](#string) |  | when the ticket should be taken into account accountingly speaking |
| statusUpdateDate | [string](#string) |  |  |
| status | [bool](#bool) |  |  |
| items | [ItemCartPb](#weebi-ticket-ItemCartPb) | repeated |  |
| ticketType | [weebi.ticket_type.TicketTypePb](#weebi-ticket_type-TicketTypePb) |  |  |
| paymentType | [TicketPb.PaymentTypePb](#weebi-ticket-TicketPb-PaymentTypePb) |  |  |
| contactId | [int32](#int32) |  |  |
| taxe | [TaxPb](#weebi-ticket-TaxPb) |  |  |
| promo | [double](#double) |  |  |
| received | [double](#double) |  |  |
| discountAmount | [double](#double) |  |  |
| comment | [string](#string) |  |  |
| creationDate | [string](#string) |  | when the ticket was created |
| contactFirstName | [string](#string) |  | complementary contact fields that need to be stored on ticket in case contacts change |
| contactLastName | [string](#string) |  |  |
| contactPhone | [string](#string) |  |  |
| contactMail | [string](#string) |  |  |





 


<a name="weebi-ticket-TicketPb-PaymentTypePb"></a>

### TicketPb.PaymentTypePb


| Name | Number | Description |
| ---- | ------ | ----------- |
| unknown | 0 |  |
| cash | 1 |  |
| nope | 2 |  |
| mobileMoney | 3 |  |
| cheque | 4 |  |
| creditCard | 5 |  |
| goods | 6 |  |


 

 

 



<a name="ticket_ticket_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ticket/ticket_service.proto



<a name="weebi-ticket-service-FindTicketRequest"></a>

### FindTicketRequest
consider adding isDeleted param


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ticketChainId | [string](#string) |  | mandatory |
| ticketBoutiqueId | [string](#string) |  | mandatory |
| creationDate | [string](#string) |  |  |
| ticketUserId | [string](#string) |  |  |
| nonUniqueId | [int32](#int32) |  |  |






<a name="weebi-ticket-service-ReadAllTicketsRequest"></a>

### ReadAllTicketsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |
| lastFetchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | optional used for weebi_app device back online |
| isDeleted | [bool](#bool) |  | optional used for weebi_app device to remove deleted tickets |






<a name="weebi-ticket-service-TicketRequest"></a>

### TicketRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ticket | [weebi.ticket.TicketPb](#weebi-ticket-TicketPb) |  |  |






<a name="weebi-ticket-service-TicketsRequest"></a>

### TicketsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tickets | [weebi.ticket.TicketPb](#weebi-ticket-TicketPb) | repeated |  |






<a name="weebi-ticket-service-TicketsResponse"></a>

### TicketsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tickets | [weebi.ticket.TicketPb](#weebi-ticket-TicketPb) | repeated |  |





 

 

 


<a name="weebi-ticket-service-TicketService"></a>

### TicketService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| readAll | [ReadAllTicketsRequest](#weebi-ticket-service-ReadAllTicketsRequest) | [TicketsResponse](#weebi-ticket-service-TicketsResponse) | allows to read tickets from all accessible boutiques / no need to paginate yet, will conisder streaming |
| readOne | [FindTicketRequest](#weebi-ticket-service-FindTicketRequest) | [.weebi.ticket.TicketPb](#weebi-ticket-TicketPb) |  |
| createOne | [TicketRequest](#weebi-ticket-service-TicketRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| createMany | [TicketsRequest](#weebi-ticket-service-TicketsRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| updateStatusOne | [TicketRequest](#weebi-ticket-service-TicketRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| deleteOne | [TicketRequest](#weebi-ticket-service-TicketRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | soft delete |

 



<a name="ticket_ticket_type-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ticket/ticket_type.proto


 


<a name="weebi-ticket_type-TicketTypePb"></a>

### TicketTypePb


| Name | Number | Description |
| ---- | ------ | ----------- |
| unknown | 0 |  |
| sell | 1 |  |
| sellDeferred | 2 |  |
| sellCovered | 3 |  |
| spend | 4 |  |
| spendDeferred | 5 |  |
| spendCovered | 6 |  |
| stockIn | 7 |  |
| stockOut | 8 |  |
| inventory | 9 |  |
| wage | 10 |  |


 

 

 



<a name="boutique-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## boutique.proto



<a name="weebi-boutique-BoutiqueMongo"></a>

### BoutiqueMongo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| boutique | [BoutiquePb](#weebi-boutique-BoutiquePb) |  |  |
| boutiqueId | [string](#string) |  | assigned by the server |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| creationTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| name | [string](#string) |  |  |
| devices | [weebi.device.Device](#weebi-device-Device) | repeated |  |
| lastTouchTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| logo | [bytes](#bytes) |  |  |
| logoExtension | [string](#string) |  | extension here is a string, e.g. png or jpeg (!= enum in ArticlePhotoPb) |
| isDeleted | [bool](#bool) |  |  |
| deletedBy | [string](#string) |  | userId who deleted it |
| restoredBy | [string](#string) |  | userId who restored it (empty if never restored) |
| additional_attributes | [BoutiqueMongo.AdditionalAttributesEntry](#weebi-boutique-BoutiqueMongo-AdditionalAttributesEntry) | repeated |  |






<a name="weebi-boutique-BoutiqueMongo-AdditionalAttributesEntry"></a>

### BoutiqueMongo.AdditionalAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="weebi-boutique-BoutiquePb"></a>

### BoutiquePb



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| boutiqueId | [string](#string) |  |  |
| creationDate | [string](#string) |  |  |
| updateDate | [string](#string) |  |  |
| statusUpdateDate | [string](#string) |  | **Deprecated.** dont use this field, use lastTouchTimestampUTC instead |
| status | [bool](#bool) |  | **Deprecated.** dont use this field, use isDeleted instead |
| name | [string](#string) |  |  |
| phone | [weebi.common.phone.Phone](#weebi-common-phone-Phone) |  |  |
| addressFull | [weebi.common.address.Address](#weebi-common-address-Address) |  |  |
| promo | [double](#double) |  |  |
| promoStart | [string](#string) |  |  |
| promoEnd | [string](#string) |  |  |
| isDeleted | [bool](#bool) |  |  |
| deletedBy | [string](#string) |  | userId who deleted it |
| restoredBy | [string](#string) |  | userId who restored it (empty if never restored) |
| mail | [string](#string) |  |  |
| additional_attributes | [BoutiquePb.AdditionalAttributesEntry](#weebi-boutique-BoutiquePb-AdditionalAttributesEntry) | repeated |  |






<a name="weebi-boutique-BoutiquePb-AdditionalAttributesEntry"></a>

### BoutiquePb.AdditionalAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |





 

 

 

 



<a name="btq_chain-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## btq_chain.proto



<a name="weebi-chain-Chain"></a>

### Chain



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| firmId | [string](#string) |  |  |
| name | [string](#string) |  |  |
| boutiques | [weebi.boutique.BoutiqueMongo](#weebi-boutique-BoutiqueMongo) | repeated |  |
| creationDateUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| lastUpdateTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| lastUpdatedByuserId | [string](#string) |  |  |






<a name="weebi-chain-Chains"></a>

### Chains



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chains | [Chain](#weebi-chain-Chain) | repeated |  |





 

 

 

 



<a name="device-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## device.proto



<a name="weebi-device-Device"></a>

### Device
a device == cash register, assigned to a boutique, 
/ by default once enrolled there is a cashier access that can always log in


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| deviceId | [string](#string) |  | deviceId is set by the server |
| chainId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |
| status | [bool](#bool) |  |  |
| password | [string](#string) |  |  |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| hardwareInfo | [HardwareInfo](#weebi-device-HardwareInfo) |  |  |






<a name="weebi-device-Devices"></a>

### Devices



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| devices | [Device](#weebi-device-Device) | repeated |  |






<a name="weebi-device-HardwareInfo"></a>

### HardwareInfo
come from weebi_app, not set by web


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| serialNumber | [string](#string) |  |  |
| baseOS | [string](#string) |  |  |
| brand | [string](#string) |  |  |





 

 

 

 



<a name="fence_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## fence_service.proto



<a name="weebi-fence-service-Access"></a>

### Access



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainIds | [weebi.user.permissions.ChainIds](#weebi-user-permissions-ChainIds) |  |  |
| boutiqueIds | [weebi.user.permissions.BoutiqueIds](#weebi-user-permissions-BoutiqueIds) |  |  |






<a name="weebi-fence-service-ApproveDeviceRequest"></a>

### ApproveDeviceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| device | [weebi.device.Device](#weebi-device-Device) |  |  |






<a name="weebi-fence-service-BoutiqueRequest"></a>

### BoutiqueRequest
one boutique creation the server will assign the boutiqueId


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| boutique | [weebi.boutique.BoutiquePb](#weebi-boutique-BoutiquePb) |  |  |
| logo | [bytes](#bytes) |  |  |
| logoExtension | [string](#string) |  |  |






<a name="weebi-fence-service-BoutiqueResponse"></a>

### BoutiqueResponse
one boutique creation the server will assign the boutiqueId


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| boutique | [weebi.boutique.BoutiquePb](#weebi-boutique-BoutiquePb) |  |  |
| logo | [bytes](#bytes) |  |  |
| logoExtension | [string](#string) |  |  |






<a name="weebi-fence-service-ChainRequest"></a>

### ChainRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| name | [string](#string) |  |  |






<a name="weebi-fence-service-CodeForPairingDevice"></a>

### CodeForPairingDevice



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |
| userId | [string](#string) |  |  |
| code | [int32](#int32) |  |  |
| timestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="weebi-fence-service-CreateDeviceResponse"></a>

### CreateDeviceResponse
deviceId == userId, so front can reuse deviceId to try login in
/ remove pending


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| statusResponse | [google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |  |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |
| deviceId | [string](#string) |  |  |






<a name="weebi-fence-service-Credentials"></a>

### Credentials



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mail | [string](#string) |  |  |
| password | [string](#string) |  |  |






<a name="weebi-fence-service-DeleteDeviceRequest"></a>

### DeleteDeviceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| device | [weebi.device.Device](#weebi-device-Device) |  |  |






<a name="weebi-fence-service-DeviceCredentials"></a>

### DeviceCredentials



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| firmId | [string](#string) |  |  |
| chainId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |
| deviceId | [string](#string) |  |  |
| password | [string](#string) |  |  |






<a name="weebi-fence-service-HealthCheckWeebiResponse"></a>

### HealthCheckWeebiResponse
Health check response with service versions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [string](#string) |  |  |
| timestamp | [string](#string) |  |  |
| versions | [ServiceVersions](#weebi-fence-service-ServiceVersions) |  |  |
| databaseHealthy | [bool](#bool) |  |  |






<a name="weebi-fence-service-IsADeviceInChainResponse"></a>

### IsADeviceInChainResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| isADevice | [bool](#bool) |  |  |






<a name="weebi-fence-service-MailAndEncyptedPassword"></a>

### MailAndEncyptedPassword



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mail | [string](#string) |  |  |
| passwordEncrypted | [string](#string) |  |  |






<a name="weebi-fence-service-MarkEmailVerifiedRequest"></a>

### MarkEmailVerifiedRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |






<a name="weebi-fence-service-PasswordResetConfirmRequest"></a>

### PasswordResetConfirmRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mail | [string](#string) |  |  |
| resetToken | [string](#string) |  |  |
| newPassword | [string](#string) |  |  |






<a name="weebi-fence-service-PasswordResetRequest"></a>

### PasswordResetRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mail | [string](#string) |  |  |






<a name="weebi-fence-service-PasswordUpdateRequest"></a>

### PasswordUpdateRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |
| firmId | [string](#string) |  |  |
| passwordCurrent | [string](#string) |  |  |
| passwordNew | [string](#string) |  |  |






<a name="weebi-fence-service-PendingDeviceRequest"></a>

### PendingDeviceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hardwareInfo | [weebi.device.HardwareInfo](#weebi-device-HardwareInfo) |  |  |
| code | [int32](#int32) |  |  |






<a name="weebi-fence-service-ReadAllBoutiquesResponse"></a>

### ReadAllBoutiquesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| boutiques | [weebi.boutique.BoutiquePb](#weebi-boutique-BoutiquePb) | repeated |  |






<a name="weebi-fence-service-ReadAllChainsResponse"></a>

### ReadAllChainsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chains | [weebi.chain.Chain](#weebi-chain-Chain) | repeated | google.retail.common.StatusResponse ? Note: chains contain only active boutiques (deleted ones are filtered out) |






<a name="weebi-fence-service-ReadDeviceBtqRequest"></a>

### ReadDeviceBtqRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| boutiqueId | [string](#string) |  |  |






<a name="weebi-fence-service-ReadDevicesRequest"></a>

### ReadDevicesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |






<a name="weebi-fence-service-ReadOneUserResponse"></a>

### ReadOneUserResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| statusResponse | [google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |  |
| user | [weebi.user.UserPublic](#weebi-user-UserPublic) |  |  |






<a name="weebi-fence-service-RefreshToken"></a>

### RefreshToken



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| refreshToken | [string](#string) |  |  |






<a name="weebi-fence-service-ServiceVersions"></a>

### ServiceVersions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server | [string](#string) |  |  |
| protos_weebi | [string](#string) |  |  |
| fence_service | [string](#string) |  |  |
| models_weebi | [string](#string) |  |  |






<a name="weebi-fence-service-Tokens"></a>

### Tokens



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accessToken | [string](#string) |  |  |
| refreshToken | [string](#string) |  |  |
| mustChangePassword | [bool](#bool) |  |  |






<a name="weebi-fence-service-UpdateDevicePasswordRequest"></a>

### UpdateDevicePasswordRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainId | [string](#string) |  |  |
| device | [weebi.device.Device](#weebi-device-Device) |  |  |






<a name="weebi-fence-service-UpdateSubscriberIdRequest"></a>

### UpdateSubscriberIdRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mail | [string](#string) |  | Required - email is unique per user |
| subscriberId | [string](#string) |  | Required - subscriber ID to link |
| userId | [string](#string) |  | Optional - if provided, used directly for better performance |






<a name="weebi-fence-service-UserId"></a>

### UserId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |






<a name="weebi-fence-service-UsersPublic"></a>

### UsersPublic



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [weebi.user.UserPublic](#weebi-user-UserPublic) | repeated |  |





 

 

 


<a name="weebi-fence-service-FenceService"></a>

### FenceService
boutiques &amp; users

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| healthCheck | [.weebi.common.empty.Empty](#weebi-common-empty-Empty) | [HealthCheckWeebiResponse](#weebi-fence-service-HealthCheckWeebiResponse) | Health check with version information |
| signUp | [.weebi.user.SignUpRequest](#weebi-user-SignUpRequest) | [.weebi.user.SignUpResponse](#weebi-user-SignUpResponse) |  |
| authenticateWithCredentials | [Credentials](#weebi-fence-service-Credentials) | [Tokens](#weebi-fence-service-Tokens) |  |
| authenticateWithRefreshToken | [RefreshToken](#weebi-fence-service-RefreshToken) | [Tokens](#weebi-fence-service-Tokens) |  |
| requestPasswordReset | [PasswordResetRequest](#weebi-fence-service-PasswordResetRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | Password reset functionality |
| confirmPasswordReset | [PasswordResetConfirmRequest](#weebi-fence-service-PasswordResetConfirmRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| createFirm | [.weebi.firm.CreateFirmRequest](#weebi-firm-CreateFirmRequest) | [.weebi.firm.CreateFirmResponse](#weebi-firm-CreateFirmResponse) | only one firm per &#39;company&#39; / 1. user signup and get a userId &amp; create firm permission / 2. A. user create a firm / Chain and Boutique will be created by default and will use the same firmId / Since createFirm also updates user permission, clientApp needs to reauthent using refresh right after / 2. B. user joins a firm is a different use case detailed in createPendingUser rpc |
| readOneFirm | [.weebi.common.empty.Empty](#weebi-common-empty-Empty) | [.weebi.firm.Firm](#weebi-firm-Firm) | TODO add updateFirm but with specific update fields, not the whole firm |
| createPendingUser | [.weebi.user.PendingUserRequest](#weebi-user-PendingUserRequest) | [.weebi.user.PendingUserResponse](#weebi-user-PendingUserResponse) |  |
| readOneUser | [UserId](#weebi-fence-service-UserId) | [ReadOneUserResponse](#weebi-fence-service-ReadOneUserResponse) |  |
| readAllUsers | [.weebi.common.empty.Empty](#weebi-common-empty-Empty) | [UsersPublic](#weebi-fence-service-UsersPublic) | Presumably, until 2030 firms will have max 9 users, why bother filter ? |
| updateOneUser | [.weebi.user.UserPublic](#weebi-user-UserPublic) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | real update, not an upsert, does nothing if user not found |
| updateUserPassword | [PasswordUpdateRequest](#weebi-fence-service-PasswordUpdateRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| deleteOneUser | [UserId](#weebi-fence-service-UserId) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| markEmailVerified | [MarkEmailVerifiedRequest](#weebi-fence-service-MarkEmailVerifiedRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | Email verification - marks a user&#39;s email as verified |
| updateSubscriberId | [UpdateSubscriberIdRequest](#weebi-fence-service-UpdateSubscriberIdRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | Update subscriber ID - links a user to a newsletter subscriber |
| createOneChain | [.weebi.chain.Chain](#weebi-chain-Chain) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| readAllChains | [.weebi.common.empty.Empty](#weebi-common-empty-Empty) | [ReadAllChainsResponse](#weebi-fence-service-ReadAllChainsResponse) |  |
| updateOneChain | [ChainRequest](#weebi-fence-service-ChainRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | only update fiels not boutiques, not upsert, do nothing if unfound |
| deleteOneChain | [ChainRequest](#weebi-fence-service-ChainRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | hard/complete delete |
| createOneBoutique | [BoutiqueRequest](#weebi-fence-service-BoutiqueRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |
| readOneBoutique | [BoutiqueRequest](#weebi-fence-service-BoutiqueRequest) | [BoutiqueResponse](#weebi-fence-service-BoutiqueResponse) |  |
| updateOneBoutique | [BoutiqueRequest](#weebi-fence-service-BoutiqueRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | real update, not upsert, do nothing if unfound |
| deleteOneBoutique | [BoutiqueRequest](#weebi-fence-service-BoutiqueRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | soft delete - marks boutique as deleted |
| restoreOneBoutique | [BoutiqueRequest](#weebi-fence-service-BoutiqueRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | restore a soft-deleted boutique |
| readAllBoutiques | [.weebi.common.empty.Empty](#weebi-common-empty-Empty) | [ReadAllBoutiquesResponse](#weebi-fence-service-ReadAllBoutiquesResponse) | returns all active boutiques across all chains (filters out deleted ones) |
| isADeviceInChain | [ReadDevicesRequest](#weebi-fence-service-ReadDevicesRequest) | [IsADeviceInChainResponse](#weebi-fence-service-IsADeviceInChainResponse) | scans all firm&#39;s devices, disregarding user rights / used both in : / weebi_app signups to REQUIRE that user pushes device data / weebi_app device linking to PREVENT user from pushing data, pulling only will be false by default, which is safer since it avoids corrupting data when linking new device that potentially weebi_app with different data == isOneDevice at least |
| readDevices | [ReadDevicesRequest](#weebi-fence-service-ReadDevicesRequest) | [.weebi.device.Devices](#weebi-device-Devices) | return only device visible according to user rights |
| generateCodeForPairingDevice | [.weebi.common.chained_ids.ChainIdAndboutiqueId](#weebi-common-chained_ids-ChainIdAndboutiqueId) | [CodeForPairingDevice](#weebi-fence-service-CodeForPairingDevice) | device enrolment follows a different process than user enrolment / generateCodeForPairingDevice is called by web app, it includes chainId and boutiqueId / A device belongs to a boutique TODO rename this create |
| readOnePendingDevice | [ReadDeviceBtqRequest](#weebi-fence-service-ReadDeviceBtqRequest) | [.weebi.device.Device](#weebi-device-Device) | webapp listens to deviceStream awaiting PoS app to createDevice by typing the code |
| createDevice | [PendingDeviceRequest](#weebi-fence-service-PendingDeviceRequest) | [CreateDeviceResponse](#weebi-fence-service-CreateDeviceResponse) | createDevice is called by mobile/desktop app / await lasts for 2 minutes (to be tested) / remove pending |
| updateDevicePassword | [UpdateDevicePasswordRequest](#weebi-fence-service-UpdateDevicePasswordRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | removed as it brings a security risk / rpc authenticateWithDevice (DeviceCredentials) returns (Tokens); |
| deleteOneDevice | [DeleteDeviceRequest](#weebi-fence-service-DeleteDeviceRequest) | [.google.retail.common.StatusResponse](#google-retail-common-StatusResponse) | hard/forever delete |

 



<a name="firm-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## firm.proto



<a name="weebi-firm-CreateFirmRequest"></a>

### CreateFirmRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | mandatory |






<a name="weebi-firm-CreateFirmResponse"></a>

### CreateFirmResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| statusResponse | [google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |  |
| firm | [Firm](#weebi-firm-Firm) |  |  |






<a name="weebi-firm-Firm"></a>

### Firm



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| firmId | [string](#string) |  |  |
| name | [string](#string) |  |  |
| subscriptionPlan | [string](#string) |  |  |
| subscriptionSeats | [int32](#int32) |  | 1 seat == 1 user/device |
| subscriptionStartTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| subscriptionEndTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| status | [bool](#bool) |  |  |
| statusUpdateTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | if weebi disables date will be in UTC time not local |
| lastUpdateTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| lastUpdatedByuserId | [string](#string) |  |  |
| isMailVerified | [bool](#bool) |  |  |
| creationDateUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |





 

 

 

 



<a name="user-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## user.proto



<a name="weebi-user-PendingUserRequest"></a>

### PendingUserRequest
used by admins to create users


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mail | [string](#string) |  |  |
| firstname | [string](#string) |  |  |
| lastname | [string](#string) |  |  |
| permissions | [permissions.UserPermissions](#weebi-user-permissions-UserPermissions) |  |  |
| phone | [weebi.common.phone.Phone](#weebi-common-phone-Phone) |  |  |
| password | [string](#string) |  | Same as UserPrivate - no confusion! |
| othersAttributes | [PendingUserRequest.OthersAttributesEntry](#weebi-user-PendingUserRequest-OthersAttributesEntry) | repeated |  |






<a name="weebi-user-PendingUserRequest-OthersAttributesEntry"></a>

### PendingUserRequest.OthersAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="weebi-user-PendingUserResponse"></a>

### PendingUserResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| statusResponse | [google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |  |
| userPublic | [UserPublic](#weebi-user-UserPublic) |  |  |






<a name="weebi-user-SignUpRequest"></a>

### SignUpRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mail | [string](#string) |  |  |
| firstname | [string](#string) |  |  |
| lastname | [string](#string) |  |  |
| password | [string](#string) |  |  |






<a name="weebi-user-SignUpResponse"></a>

### SignUpResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| statusResponse | [google.retail.common.StatusResponse](#google-retail-common-StatusResponse) |  |  |
| userId | [string](#string) |  |  |






<a name="weebi-user-UserPrivate"></a>

### UserPrivate
this is how users are stored in db
/ this model should not be exposed / used by clients
/ because it includes password


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  | string userId = 1 [json_name = &#39;userId&#39;]; |
| mail | [string](#string) |  |  |
| firstname | [string](#string) |  |  |
| lastname | [string](#string) |  |  |
| phone | [weebi.common.phone.Phone](#weebi-common-phone-Phone) |  |  |
| passwordEncrypted | [string](#string) |  |  |
| firmId | [string](#string) |  |  |
| permissions | [permissions.UserPermissions](#weebi-user-permissions-UserPermissions) |  |  |
| lastSignIn | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| lastUpdatedByuserId | [string](#string) |  |  |
| lastUpdateTimestampUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| creationDateUTC | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| mustChangePassword | [bool](#bool) |  | Forces password change on first login |
| emailVerificationSent | [bool](#bool) |  | Track if setup email was sent |
| subscriberId | [string](#string) |  | Optional - created when first subscribing to a newsletter 14 |
| othersAttributes | [UserPrivate.OthersAttributesEntry](#weebi-user-UserPrivate-OthersAttributesEntry) | repeated |  |






<a name="weebi-user-UserPrivate-OthersAttributesEntry"></a>

### UserPrivate.OthersAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="weebi-user-UserPublic"></a>

### UserPublic



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |
| mail | [string](#string) |  |  |
| firstname | [string](#string) |  |  |
| lastname | [string](#string) |  |  |
| phone | [weebi.common.phone.Phone](#weebi-common-phone-Phone) |  |  |
| lastSignIn | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| permissions | [permissions.UserPermissions](#weebi-user-permissions-UserPermissions) |  |  |
| mustChangePassword | [bool](#bool) |  | Client needs this to enforce password change |
| othersAttributes | [UserPublic.OthersAttributesEntry](#weebi-user-UserPublic-OthersAttributesEntry) | repeated |  |






<a name="weebi-user-UserPublic-OthersAttributesEntry"></a>

### UserPublic.OthersAttributesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |





 

 

 

 



<a name="user_permissions-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## user_permissions.proto



<a name="weebi-user-permissions-AccessFull"></a>

### AccessFull



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hasFullAccess | [bool](#bool) |  |  |






<a name="weebi-user-permissions-AccessLimited"></a>

### AccessLimited



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chainIds | [ChainIds](#weebi-user-permissions-ChainIds) |  |  |
| boutiqueIds | [BoutiqueIds](#weebi-user-permissions-BoutiqueIds) |  |  |






<a name="weebi-user-permissions-ArticleRights"></a>

### ArticleRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |






<a name="weebi-user-permissions-BillingRights"></a>

### BillingRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |






<a name="weebi-user-permissions-BoolRights"></a>

### BoolRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| canSeeStats | [bool](#bool) |  |  |
| canExportData | [bool](#bool) |  |  |
| canGiveDiscount | [bool](#bool) |  |  |
| canSetPromo | [bool](#bool) |  |  |
| canStockMovement | [bool](#bool) |  |  |
| canStockInventory | [bool](#bool) |  |  |
| canSpendOutOfCatalog | [bool](#bool) |  |  |
| canPurchase | [bool](#bool) |  |  |
| canImportTickets | [bool](#bool) |  |  |
| canSellOutOfCatalog | [bool](#bool) |  |  |
| canUpdateContactBalanceOffline | [bool](#bool) |  |  |






<a name="weebi-user-permissions-BoutiqueIds"></a>

### BoutiqueIds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ids | [string](#string) | repeated |  |






<a name="weebi-user-permissions-BoutiqueRights"></a>

### BoutiqueRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |






<a name="weebi-user-permissions-ChainIds"></a>

### ChainIds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ids | [string](#string) | repeated |  |






<a name="weebi-user-permissions-ChainRights"></a>

### ChainRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |






<a name="weebi-user-permissions-ContactRights"></a>

### ContactRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |






<a name="weebi-user-permissions-FirmRights"></a>

### FirmRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |






<a name="weebi-user-permissions-TicketRights"></a>

### TicketRights
there is no such a thing as updating a ticket, one can simply disable or restore it
/ but for simplicity we will use the same enum Right here, including update


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |






<a name="weebi-user-permissions-UserManagementRights"></a>

### UserManagementRights



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rights | [Right](#weebi-user-permissions-Right) | repeated |  |
| canUpdateUserPassword | [bool](#bool) |  |  |






<a name="weebi-user-permissions-UserPermissions"></a>

### UserPermissions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |
| firmId | [string](#string) |  |  |
| limitedAccess | [AccessLimited](#weebi-user-permissions-AccessLimited) |  |  |
| fullAccess | [AccessFull](#weebi-user-permissions-AccessFull) |  |  |
| ticketRights | [TicketRights](#weebi-user-permissions-TicketRights) |  |  |
| contactRights | [ContactRights](#weebi-user-permissions-ContactRights) |  |  |
| articleRights | [ArticleRights](#weebi-user-permissions-ArticleRights) |  |  |
| boutiqueRights | [BoutiqueRights](#weebi-user-permissions-BoutiqueRights) |  |  |
| chainRights | [ChainRights](#weebi-user-permissions-ChainRights) |  |  |
| firmRights | [FirmRights](#weebi-user-permissions-FirmRights) |  |  |
| userManagementRights | [UserManagementRights](#weebi-user-permissions-UserManagementRights) |  |  |
| billingRights | [BillingRights](#weebi-user-permissions-BillingRights) |  |  |
| boolRights | [BoolRights](#weebi-user-permissions-BoolRights) |  |  |





 


<a name="weebi-user-permissions-Right"></a>

### Right
user CRUD rights on base models

| Name | Number | Description |
| ---- | ------ | ----------- |
| unknown | 0 |  |
| create | 1 |  |
| read | 2 |  |
| update | 3 |  |
| delete | 4 |  |


 

 

 



<a name="weebi_app_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## weebi_app_service.proto



<a name="weebi-weebi_app-service-AppMinVersionRequest"></a>

### AppMinVersionRequest







<a name="weebi-weebi_app-service-AppMinVersionResponse"></a>

### AppMinVersionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| minVersion | [int32](#int32) |  |  |
| isUpgradeImperative | [bool](#bool) |  |  |





 

 

 


<a name="weebi-weebi_app-service-WeebiAppService"></a>

### WeebiAppService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| readAppMinimumVersion | [AppMinVersionRequest](#weebi-weebi_app-service-AppMinVersionRequest) | [AppMinVersionResponse](#weebi-weebi_app-service-AppMinVersionResponse) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

