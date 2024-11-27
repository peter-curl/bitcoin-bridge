;; title: Bitcoin Bridge Smart Contract
;; summary: A smart contract for bridging Bitcoin to a wrapped token on the Stacks blockchain.
;; description: This contract allows users to deposit Bitcoin and receive wrapped Bitcoin tokens (wBTC) on the Stacks blockchain. It includes functionalities for managing oracles, pausing the bridge, updating bridge fees, and validating Bitcoin transactions. The contract ensures secure and transparent handling of Bitcoin deposits and withdrawals, with mechanisms for emergency scenarios and oracle-based transaction validation.

;; Errors
(define-constant ERR-NOT-AUTHORIZED (err u1))
(define-constant ERR-INVALID-AMOUNT (err u2))
(define-constant ERR-INSUFFICIENT-BALANCE (err u3))
(define-constant ERR-BRIDGE-PAUSED (err u4))
(define-constant ERR-TRANSACTION-ALREADY-PROCESSED (err u5))
(define-constant ERR-ORACLE-VALIDATION-FAILED (err u6))