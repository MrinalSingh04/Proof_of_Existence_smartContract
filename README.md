# 🔐 Proof of Existence v2 (PoE with Metadata)

A decentralized application for proving the existence and ownership of digital documents **without uploading** the file itself — using **hashing**, **metadata storage**, and **blockchain timestamps**.

## 🚀 What is this project?

This smart contract allows users to:

- Register a document by submitting its cryptographic hash
- Attach optional metadata (title and category)
- Store a tamper-proof timestamp and ownership record on-chain

This is **Proof of Existence v2**, an improvement over naive PoE systems by including:

- Metadata (title, category)
- Ownership tracking
- Duplicate prevention
- Public verification

---

## 🧠 Why build this?

### ✅ Problem

Legal and professional systems often require **verifiable evidence** that a document existed at a specific point in time — e.g.:

- Contracts
- Research drafts
- Source code snapshots
- Artworks, writing, or inventions

However, uploading full documents to the blockchain is expensive and insecure. Instead, we use **file hashes** to uniquely represent content.

### ✅ Solution

This smart contract enables:

- Proof without revealing document contents
- Timestamp and ownership tracking
- Public, decentralized registry

By storing only the hash + minimal metadata, it keeps costs low and privacy intact.

---

## ⚙️ Tech Stack

| Layer       | Tool                                       |
| ----------- | ------------------------------------------ |
| Language    | Solidity (v0.8.20)                         |
| Framework   | [Foundry](https://book.getfoundry.sh/)     |
| Local Chain | [Anvil](https://book.getfoundry.sh/anvil/) |
| Deployment  | `forge script`                             |
| Testing     | `forge test`                               |

---

## 📄 📄 License

MIT License — use freely, modify openly.
