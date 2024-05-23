// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherReceiver {
    // Fallback function to handle any unrecognized calls without Ether
    fallback() external {
        emit UnrecognizedCall(msg.sender, msg.data);
    }

    // Fallback function to accept Ether and handle any unrecognized calls
    receive() external payable {
        emit ReceivedEther(msg.sender, msg.value, msg.data);
    }

    // Event to log received Ether and any unrecognized data
    event ReceivedEther(address sender, uint256 value, bytes data);

    // Event to log any unrecognized calls without Ether
    event UnrecognizedCall(address caller, bytes data);
} 