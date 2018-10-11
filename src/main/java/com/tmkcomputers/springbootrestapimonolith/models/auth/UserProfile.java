package com.tmkcomputers.springbootrestapimonolith.models.auth;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "user_profiles")
@Getter
@Setter
@EqualsAndHashCode(of = "id")
public class UserProfile implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
    @Embedded
    private Name name;
    
    @NotNull
    @Email
    @Column(unique = true)
    private String email;

	@Column(name = "phone_number")
	@Size(max = 15)
	private String phoneNumber;

	@Enumerated(EnumType.STRING)
	@Column(length = 10)
	private Gender gender;

	@Temporal(TemporalType.DATE)
	@Column(name = "dob")
	private Date dateOfBirth;

    @Embedded
    @AttributeOverrides(value = {
        @AttributeOverride(name = "addressLine1", column = @Column(name = "house_number")),
        @AttributeOverride(name = "addressLine2", column = @Column(name = "street"))
    })
    private Address address;
    
    @ElementCollection
    @CollectionTable(name = "user_phone_numbers", joinColumns = @JoinColumn(name = "user_id"))
    @Column(name = "phone_number")
    private Set<String> phoneNumbers = new HashSet<>();

//    @ElementCollection(fetch = FetchType.LAZY)
//    @CollectionTable(name = "user_addresses", joinColumns = @JoinColumn(name = "user_id"))
//    @AttributeOverrides({
//            @AttributeOverride(name = "addressLine1", column = @Column(name = "house_number")),
//            @AttributeOverride(name = "addressLine2", column = @Column(name = "street"))
//    })
//    private Set<Address> addresses = new HashSet<>();

	@OneToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "user_id", nullable = false)
	private User user;
}