package com.tmkcomputers.springbootrestapimonolith.models.auth;

import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Embeddable
public @Data class Name {
	@NotNull
	@Size(max = 40)
	private String firstName;

	@Size(max = 40)
	private String middleName;

	@Size(max = 40)
	private String lastName;
}
