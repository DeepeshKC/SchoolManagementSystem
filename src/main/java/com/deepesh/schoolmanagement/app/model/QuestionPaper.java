package com.deepesh.schoolmanagement.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_question_paper")
public class QuestionPaper {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long questionPaperId;

	@Column(name = "question_paper_name")
	private String questionPaperName;

	@Column(name = "question1")
	private String question1;

	@Column(name = "option1")
	private String option1;

	@Column(name = "option2")
	private String option2;

	@Column(name = "option3")
	private String option3;

	@Column(name = "option4")
	private String option4;

	@Column(name = "right_answer")
	private String rightAnswer;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "class_id")
	public Classes classes1;

	public Long getQuestionPaperId() {
		return questionPaperId;
	}

	public void setQuestionPaperId(Long questionPaperId) {
		this.questionPaperId = questionPaperId;
	}

	public String getQuestionPaperName() {
		return questionPaperName;
	}

	public void setQuestionPaperName(String questionPaperName) {
		this.questionPaperName = questionPaperName;
	}

	public String getQuestion1() {
		return question1;
	}

	public void setQuestion1(String question1) {
		this.question1 = question1;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getRightAnswer() {
		return rightAnswer;
	}

	public void setRightAnswer(String rightAnswer) {
		this.rightAnswer = rightAnswer;
	}

	public Classes getClasses1() {
		return classes1;
	}

	public void setClasses1(Classes classes1) {
		this.classes1 = classes1;
	}

}
