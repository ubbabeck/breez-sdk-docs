# Receiving Lightning Payments

With the Breez SDK you aren't required to open a channel and set up your inbound liquidity.
The Breez SDK automatically connects your node to the LSP peer and you can now receive payments.

<custom-tabs category="lang">
<div slot="title">Rust</div>
<section>

```rust,ignore
let res = sdk.receive_payment(
    ReceivePaymentRequest {
        amount_msat: 3_000_000,
        description: "Invoice for 3000 sats".into(),
        cltv: None,
        expiry: None,
        opening_fee_params: None,
        preimage: None,
        use_description_hash: None
    })
    .await?;
```
</section>

<div slot="title">Swift</div>
<section>

```swift
do {
  let invoice = try sdk.receivePayment(
    req: ReceivePaymentRequest(
        amountMsat: 3_000_000, 
        description: "Invoice for 3000 sats"))
} catch {
    // handle error
}
```
</section>

<div slot="title">Android</div>
<section>

```kotlin,ignore
try {
    val invoice = sdk.receivePayment(ReceivePaymentRequest(
        3_000_000L.toULong(),
        "Invoice for 3000 sats",
    ))
} catch (e: Exception) {
    // handle error
}
```
</section>

<div slot="title">React Native</div>
<section>

```typescript
try {
    const invoice = await receivePayment({
        amountMsat: 3_000_000, 
        description: "Invoice for 3000 sats"
    })
} catch (error) {
    console.log(error)
}
```
</section>

<div slot="title">Dart</div>
<section>

```dart
try {
    ReceivePaymentResponse invoice = await receivePayment(
        req: ReceivePaymentRequest(
            amountMsat: 3_000_000, 
            description: "Invoice for 3000 sats",
        ),
    );
} catch (error) {
    // handle error
}
```
</section>

<div slot="title">Python</div>
<section>

```python
try:
  receive_payment_response = sdk_services.receive_payment(
    breez_sdk.ReceivePaymentRequest(
        amount_msat=3_000_000,
        description="Invoice for 3000 sats"))
except Exception as error:
  # Handle error
```
</section>

<div slot="title">Go</div>
<section>

```go
receivePaymentRequest := breez_sdk.ReceivePaymentRequest{
    AmountMsat:  3_000_000,
    Description: "Invoice for 3000 sats",
}
if receivePaymentResponse, err := sdk.ReceivePayment(receivePaymentRequest); err == nil {
    log.Printf("%#v", receivePaymentResponse)
}
```
</section>

<div slot="title">C#</div>
<section>

```cs
try 
{
    var invoice = sdk.ReceivePayment(
        new ReceivePaymentRequest(3_000_000, "Invoice for 3000 sats"));
} 
catch (Exception) 
{
    // Handle error
}
```
</section>
</custom-tabs>