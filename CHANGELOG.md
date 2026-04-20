# changelog

## 1.3.0

- add getSessionInternal in fence_service

## 1.2.9

- add currency and 2nd currency on firm, chain, boutique and ticket
- add isFirmCreator in user

## 1.2.0

- add legalTermsVersionDate in license.proto

## 1.1.9

- New RPC: fulfillFromStripeCheckoutSession

## 1.1.8

- PaymentProvider in license.proto

## 1.1.7

- Referral program: per-firm referral codes, 20% commission as credit, auto-apply at checkout, cash-out ≥ €15
- License: referredByFirmId, creditAppliedCents
- Firm: referralCode, referralCreditBalanceCents
- BillingService: getReferralInfo, requestReferralPayout; CreateLicenseRequest: referralCode, creditAppliedCents

## 1.1.6

- Create license proto
- Create billing_service 
- Deprecate subscription fields in Firm message

- Added new fields: stripeCustomerId, licenses (repeated License), and providerCustomerIds (map) to enhance firm management capabilities.

## 1.1.5

- added soft delete fields in Chain

## 1.1.4

- added fields in auth rpc to build sessionId logic in envoy proxy and remove JWT from webapp

## 1.1.3

- update MarkEmailVerifiedRequest

## 1.1.2

- added rpc updateSubscriberId in fence_service

## 1.1.1

- Added subscriberId in UserPrivate

## 1.1.0

- Added `markEmailVerified` RPC to `FenceService` for email verification tracking
  - New RPC: `markEmailVerified(MarkEmailVerifiedRequest) returns (StatusResponse)`
  - New message: `MarkEmailVerifiedRequest` with `userId` field
  - Allows service accounts to mark a user's email as verified by setting `emailVerificationSent = true`
  - Used by weebi_express service to track email verification status after users click verification links

## 1.0.0

- 1st 