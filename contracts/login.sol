// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <8.10.0;

contract SimpleStorage {
  uint storedData;

  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }
  
  function login(string memory username, string memory password) public pure returns (string memory){
    if (isEqual(username, password)){
      return "True";
    }
    else{
      return "False";
    }
  }

  function isEqual(string memory a, string memory b) public pure returns (bool) {
    return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
}

}
