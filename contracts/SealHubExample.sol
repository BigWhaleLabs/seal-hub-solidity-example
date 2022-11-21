// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {SealHub} from "@big-whale-labs/seal-hub-contract/contracts/SealHub.sol";
import {ECDSAProof} from "@big-whale-labs/seal-hub-contract/contracts/SealHub.sol";

contract SealHubExample {
  // SealHub contract
  SealHub sealHub;

  /// @param sealHubAddress SealHub contract address.
  constructor(address sealHubAddress) {
    sealHub = SealHub(sealHubAddress);
  }

  function commitmentExample(ECDSAProof memory proof) public {
    sealHub.createCommitment(proof);
  }

  function checkCommitment(uint256 commitmentId) public view returns (bool) {
    return sealHub.commitmentMap(commitmentId);
  }
}
