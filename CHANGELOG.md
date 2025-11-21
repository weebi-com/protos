# 1.1.0

- Added `markEmailVerified` RPC to `FenceService` for email verification tracking
  - New RPC: `markEmailVerified(MarkEmailVerifiedRequest) returns (StatusResponse)`
  - New message: `MarkEmailVerifiedRequest` with `userId` field
  - Allows service accounts to mark a user's email as verified by setting `emailVerificationSent = true`
  - Used by weebi_express service to track email verification status after users click verification links

# 1.0.0

- 1st 