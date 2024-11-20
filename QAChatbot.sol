
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QAChatbot {
    struct QuestionAnswer {
        string question;
        string answer;
    }

    QuestionAnswer[] public qaDatabase;

    function addQA(string memory question, string memory answer) public {
        qaDatabase.push(QuestionAnswer(question, answer));
    }

    function getQA(uint256 index) public view returns (string memory, string memory) {
        require(index < qaDatabase.length, "QA index out of bounds.");
        QuestionAnswer memory qa = qaDatabase[index];
        return (qa.question, qa.answer);
    }
}
