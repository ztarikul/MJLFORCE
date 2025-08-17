import React, { useCallback, useEffect, useRef, useState } from "react";
import { useDropzone } from "react-dropzone";
import Main from "../Main";
import Auth from "../../auth/Auth";
import Swal from "sweetalert2";
import { getCurrentLocation } from "../../utils/getCurrentLocation";
import { useNavigate } from "react-router-dom";

export default function Complaint() {
  //   const navigate = useNavigate();
  const { http } = Auth();
  const [soldToParties, setSoldToParties] = useState([]);
  const [complaintTypes, setComplaintTypes] = useState([]);
  const cameraInputRef = useRef(null);
  const [formData, setFormData] = useState({
    sold_to_party_id: "",
    complaint_type: "",
    complaint: "",
    long: "",
    lat: "",
    images: [], //for upload file
  });
  const [errors, setErrors] = useState({});

  const fetchFormData = useCallback(() => {
    http
      .get("/complaint")
      .then((res) => {
        console.log(res);
        setSoldToParties(res.data.soldToParties);
        setComplaintTypes(res.data.complaintTypes);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

  const formSubmit = async (e) => {
    e.preventDefault();

    const result = await Swal.fire({
      title: "Are you sure?",
      text: "Do you want to submit the form?",
      icon: "question",
      showCancelButton: true,
      confirmButtonText: "Yes, submit it!",
      cancelButtonText: "Cancel",
    });

    if (result.isConfirmed) {
      const sendData = new FormData();
      sendData.append("sold_to_party_id", formData.sold_to_party_id);
      sendData.append("complaint_type", formData.complaint_type);
      sendData.append("complaint", formData.complaint);
      sendData.append("long", formData.long);
      sendData.append("lat", formData.lat);

      formData.images.forEach((file) => {
        sendData.append("files[]", file);
      });

      http
        .post("/store_complaint", sendData, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          console.log(res.data); // Handle success response
          if (res.data.status === "success") {
            Swal.fire({
              title: "Submitted!",
              text: "Your form has been submitted.",
              icon: "success",
              timer: 2000,
              showConfirmButton: false,
            });
            setFormData({
              sold_to_party_id: "",
              complaint_type: "",
              complaint: "",
              long: "",
              lat: "",
              images: [],
            });

            // navigate("/");
          }
        })
        .catch((error) => {
          console.log(error);
          if (error.ststus !== 401) {
            setErrors(error.response.data.errors);
          }
        });
    }
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));

    if (!formData.lat && !formData.long) {
      getCurrentLocation()
        .then((location) => {
          // setFormData({ lat: location.latitude, long: location.longitude });
          setFormData((prev) => ({
            ...prev,
            long: location.longitude,
            lat: location.latitude,
          }));
        })
        .catch((err) => {
          console.log(err);
        });
    }
  };

  const onDrop = (acceptedFiles) => {
    if (formData.images.length + acceptedFiles.length > 3) {
      alert("You can upload a maximum of 3 images.");
      return;
    }
    setFormData((prev) => ({
      ...prev,
      images: [...prev.images, ...acceptedFiles], // append new files
    }));
  };

  const removeImage = (index) => {
    setFormData((prev) => ({
      ...prev,
      images: prev.images.filter((_, i) => i !== index),
    }));
  };

  const { getRootProps, getInputProps, isDragActive } = useDropzone({
    onDrop,
    multiple: true,
    accept: { "image/*": [] },
    maxFiles: 3, // Dropzone-level restriction
  });

  const openCamera = () => {
    if (cameraInputRef.current) {
      cameraInputRef.current.click();
    }
  };

  const handleCameraCapture = (e) => {
    const file = e.target.files[0];
    if (file) {
      if (formData.images.length >= 3) {
        alert("You can upload a maximum of 3 images.");
        return;
      }
      setFormData((prev) => ({
        ...prev,
        images: [...prev.images, file],
      }));
    }
  };

  return (
    <Main>
      <div className="container-fluid">
        <div className="row">
          <div className="col-xl-12 xl-100 col-lg-12 box-col-12">
            <div className="card">
              <div className="card-header pb-0">
                <h5>Complaint</h5>
              </div>
              <div className="card-body">
                <form className="form theme-form" onSubmit={formSubmit}>
                  <div className="card-body">
                    <div className="row">
                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="sold_to_party">
                            Customer Name{" "}
                            <span style={{ color: "red" }}>*</span>
                          </label>
                          <select
                            className="form-select"
                            id="sold_to_party_id"
                            name="sold_to_party_id"
                            onChange={handleChange}
                          >
                            <option value="">Please Select</option>
                            {soldToParties.map((soldToParty) => (
                              <option
                                key={soldToParty.id}
                                value={soldToParty.id}
                              >
                                {soldToParty.acc_name}
                              </option>
                            ))}
                          </select>
                        </div>
                        {errors.sold_to_party_id && (
                          <span className="" style={{ color: "red" }}>
                            {errors.sold_to_party_id[0]}
                          </span>
                        )}
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label
                            className="form-label"
                            htmlFor="complaint_type"
                          >
                            Complaint Types{" "}
                            <span style={{ color: "red" }}>*</span>
                          </label>
                          <select
                            className="form-select"
                            id="complaint_type"
                            name="complaint_type"
                            onChange={handleChange}
                          >
                            <option value="">Please Select</option>
                            {complaintTypes.map((type) => (
                              <option key={type.id} value={type.id}>
                                {type.name}
                              </option>
                            ))}
                          </select>
                        </div>
                        {errors.complaint_type && (
                          <span className="" style={{ color: "red" }}>
                            {errors.complaint_type[0]}
                          </span>
                        )}
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="complaint">
                            Complaint <span style={{ color: "red" }}>*</span>
                          </label>
                          <textarea
                            className="form-control"
                            id="complaint"
                            name="complaint"
                            rows="6"
                            onChange={handleChange}
                          ></textarea>
                        </div>
                        {errors.complaint && (
                          <span className="" style={{ color: "red" }}>
                            {errors.complaint[0]}
                          </span>
                        )}
                      </div>
                      <div className="col-md-4">
                        <div
                          {...getRootProps()}
                          style={{
                            border: "2px dashed #ccc",
                            padding: "20px",
                            textAlign: "center",
                          }}
                        >
                          <input {...getInputProps()} />
                          {isDragActive ? (
                            <p>Drop images here...</p>
                          ) : (
                            <p>Drag & drop images, or click to select</p>
                          )}
                        </div>

                        {/* Take Photo Button */}
                        <div
                          onClick={openCamera}
                          style={{
                            border: "2px dashed #ccc",
                            padding: "20px",
                            textAlign: "center",
                            cursor: "pointer",
                          }}
                        >
                          <p>Click here to take photo or select from gallery</p>
                        </div>

                        <input
                          ref={cameraInputRef}
                          type="file"
                          accept="image/*"
                          capture="environment"
                          style={{ display: "none" }}
                          onChange={handleCameraCapture}
                        />

                        {/* Preview */}
                        <div
                          style={{
                            display: "flex",
                            flexWrap: "wrap",
                            marginTop: "10px",
                          }}
                        >
                          {formData.images.map((file, idx) => (
                            <div
                              key={idx}
                              style={{ position: "relative", margin: "5px" }}
                            >
                              <img
                                key={idx}
                                src={URL.createObjectURL(file)}
                                alt="Preview"
                                style={{
                                  width: "100px",
                                  height: "100px",
                                  objectFit: "cover",
                                  margin: "5px",
                                }}
                              />
                              <button
                                type="button"
                                onClick={() => removeImage(idx)}
                                style={{
                                  position: "absolute",
                                  top: 0,
                                  right: 0,
                                  background: "red",
                                  color: "white",
                                  border: "none",
                                  cursor: "pointer",
                                }}
                              >
                                X
                              </button>
                            </div>
                          ))}
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="card-footer text-end">
                    <button className="btn btn-primary" type="submit">
                      Submit
                    </button>
                    <input
                      className="btn btn-light"
                      type="reset"
                      value="Cancel"
                    />
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
