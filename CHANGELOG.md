# changelog

## 1.3.11 - august 2026

- add hasClosedYears in UserPermission

## 1.3.10 - july 2026

- `BusinessClassification` message: composite key `isicCode` (string) + `subCode`
- `isicCode` + `isicSubCode` on Boutique, Chain, ChainRequest, ClosedYearPb
- `CommerceTypePb` documented as SYSCOHADA regimes A/B/C
- Authoritative list in protos_weebi `BusinessClassifications.all` (not an enum)

## 1.3.9 - july 2026

- `CommerceTypePb` (négoce / artisanat / services) on Chain + Boutique
- `commercialRegisterNumber` on Chain + Boutique; optional on `CreateFirmRequest` (cascade to first chain/boutique only)
- `ClosedYearPb` snapshot: `commercialRegisterNumber` + `commerceType` for SMT PDF/Excel
- `ChainRequest` patch fields for register + commerce type

## 1.3.8 - july 2026

- PawaPay billing base: `createPawapayCheckout`, `fulfillLicenseFromPawapay`, `fulfillFromPawapayCheckout`
- `AccountingYearPurchase.pawapayCheckoutId` + `paymentProvider`
- App→Web magic link: `createWebBridgeLink`, `exchangeWebBridgeToken`
- Ticket types: `rebalance`, `inventoryClosingValue` (replaces unused `wage` slot)

## 1.3.7 - july 2026

- SYSCOHADA: `readAccountingYearPurchases`, `fiscalYear` on Stripe checkout/fulfill

## 1.3.6 - july 2026

- replaced_ticket_id to track if a ticket is a fix of a previous one (for transparency towards customers and managers)

## 1.3.4 - may 2026

- update the offers to reflect simplify with entreprise and premium licenses 

## 1.3.3 - may 2026

- add retail total logic in ticket.proto
- add options.proto 

## 1.3.2

- add BusinessRules in Chain and Boutique
- add BusinessRules in ChainRequest for chain updates

## 1.3.1

- add getSessionInternal in fence_service
- and isWebApp in refresh and logout rpcs

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