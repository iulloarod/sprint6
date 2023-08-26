package com.example.seguridad.controllers;

import com.example.seguridad.dao.PayList;
import com.example.seguridad.dao.TrainingList;
import com.example.seguridad.dao.UserList;
import com.example.seguridad.dao.VisitsList;
import com.example.seguridad.models.Pay;
import com.example.seguridad.models.Training;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class TrainingController {

    //CONTACT
    @GetMapping("/contactView")
    public String getcontactview() {

        return "contactView";

    }

    @PostMapping("/saveMessage")
    public String sendMessage(
            @RequestParam("email") String emailName,
            @RequestParam("message") String messageContent,
            Model model) {
        System.out.println(emailName + " :" + messageContent);
        return "contactView";
    }

    //CREATE TRAINING
    @GetMapping("/createTrainingView")
    public String getcreatetrainingview() {

        return "createTrainingView";
    }
    @PostMapping("/saveTraining")
    public String createTraining(
            @RequestParam("title") String trainingName,
            @RequestParam("duration") String trainingLength,
            @RequestParam("localization") String trainingLocal,
            Model model) {
        TrainingList.trainingList.add(new Training(trainingName, trainingLength, trainingLocal));
        return "createTrainingView";
    }

    //TRAINING
    @GetMapping("/listTrainingView")
    public String showListTrainingView(Model model) {
        model.addAttribute("listTraining", TrainingList.trainingList);
        return "listTrainingView";
    }

    //PAYS
    @GetMapping("/paysView")
    public String getPaysView(Model model) {
        model.addAttribute("listPay", PayList.payList);
        return "paysView";
    }
    @PostMapping("/savePay")
    public String createPayment(
            @RequestParam("item") String itemName,
            @RequestParam("amount") String quantityAmount,
            Model model) {
        PayList.payList.add(new Pay(itemName, quantityAmount));
        return "paysView";
    }

    //VISITS
    @GetMapping("/visitsView")
    public String getVisitsView(Model model) {
        model.addAttribute("listVisits", VisitsList.visitsList);
        return "visitsView";
    }

    //USERS
    @GetMapping("/editUsersView")
    public String getEditUsersView(Model model) {
        model.addAttribute("userList", UserList.userList);

        return "editUsersView";
    }
}
