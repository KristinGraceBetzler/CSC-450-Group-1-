package com.github.CSC450Group1.wefli.Trip;
import com.github.CSC450Group1.wefli.Trip.TripObjects.Destinations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/trip")
public class TripController {
    @Autowired
    TripService tripService;

    @PostMapping("/nextDestination")
    public Destinations nextDestination(@RequestBody int id) {
        return tripService.getDestination(id);
    }
}
