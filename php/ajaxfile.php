<?php
include "config.php";

$data = json_decode(file_get_contents("php://input"));

$request = $data->request;

// Fetch story
if($request == 1){
	$story = mysqli_query($con,"select * from passage order by id desc");

	$response;
	while($row = mysqli_fetch_assoc($story)){
	    $response = $row;
	}

	echo json_encode($response);
	exit;
}

// Fetch questions
if($request == 2){
	$quiz = mysqli_query($con,"select * from questions order by id asc");

	$response = array();
	while($row = mysqli_fetch_assoc($quiz)){
	    $response[] = $row;
	}

	echo json_encode($response);
	exit;
}

// Fetch options
if($request == 3){
	$opts = mysqli_query($con,"select * from options order by id asc");

	$response = array();
	while($row = mysqli_fetch_assoc($opts)){
	    $response[] = $row;
	}

	echo json_encode($response);
	exit;
}

// New Story
if($request == 4){
  	$story = $data->story;
	mysqli_query($con,"INSERT INTO passage(Story) VALUES('".$story."')");
    echo "Insert successfully";
  exit;
}

// New Question
if($request == 5){
	$newQuestionID = $data->newQuestionID;
	$newQuestion = $data->newQuestion;
	$newRightOption = $data->newRightOption;
  mysqli_query($con,"INSERT INTO questions(id,question,right_option) VALUES('".$newQuestionID."','".$newQuestion."','".$newRightOption."')");
  echo "Insert successfully";
exit;
}

// Delete question
if($request == 6){
	$id = $data->id;

  mysqli_query($con,"DELETE FROM questions WHERE id = $id;");
  echo "Delete successfully";
exit;
}

