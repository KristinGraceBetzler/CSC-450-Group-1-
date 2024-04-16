package com.github.CSC450Group1.wefli.Trip;

import com.github.CSC450Group1.wefli.RequestClasses.CommentInfo;
import com.github.CSC450Group1.wefli.RequestClasses.TripInfo;
import com.github.CSC450Group1.wefli.Trip.TripObjects.TripToReturn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/trip")
public class TripController {
    @Autowired
    TripService tripService;

    @PutMapping("/createTrip")
    public TripToReturn createTrip(@RequestBody TripInfo info) {
        return tripService.selectDestination(info);
    }

    @PutMapping("/like")
    public void likeTrip(@RequestBody int tripID) {
        tripService.likeTrip(tripID);
    }

    @PostMapping("/comment")
    public void comment(@RequestBody CommentInfo commentInfo) {
        tripService.comment(commentInfo);
    }
}
