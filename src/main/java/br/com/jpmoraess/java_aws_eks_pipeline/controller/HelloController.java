package br.com.jpmoraess.java_aws_eks_pipeline.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

    @GetMapping("/{name}")
    public HelloResponse hello(@PathVariable(value = "name") String name) {
        return HelloResponse.of(name);
    }

    public record HelloResponse(String message) {
        public static HelloResponse of(String name) {
            return new HelloResponse("Hello " + name);
        }
    }
}
