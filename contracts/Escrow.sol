// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow {
    address public buyer;
    address public seller;
    uint public amount;
    uint public deadline;
    bool public isSellerApproved;
    bool public isComplete;

    // Etkinlikler (event) tanımlama
    event Deposit(address indexed _buyer, uint _amount);
    event ApprovedBySeller();
    event Refunded();

    // Yapıcı fonksiyon (constructor) - alıcı, satıcı ve ödeme miktarıyla sözleşmeyi başlatır
    constructor(address _seller, uint _durationInMinutes) payable {
        buyer = msg.sender;
        seller = _seller;
        amount = msg.value;
        deadline = block.timestamp + (_durationInMinutes * 1 minutes);
        isComplete = false;

        emit Deposit(buyer, amount);
    }

    // Satıcının onay vermesi için fonksiyon
    function approveBySeller() external {
        require(msg.sender == seller, "Only the seller can approve");
        require(block.timestamp < deadline, "Deadline has passed");
        require(!isComplete, "The transaction is already completed");

        isSellerApproved = true;
        isComplete = true;
        payable(seller).transfer(amount);

        emit ApprovedBySeller();
    }

    // Zaman aşımı durumunda alıcıya iade
    function refundIfTimedOut() external {
        require(msg.sender == buyer, "Only the buyer can request a refund");
        require(block.timestamp >= deadline, "The timeout has not yet occurred");
        require(!isComplete, "The transaction is already completed");

        isComplete = true;
        payable(buyer).transfer(amount);

        emit Refunded();
    }
}