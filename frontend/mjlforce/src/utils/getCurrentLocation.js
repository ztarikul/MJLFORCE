export const getCurrentLocation = () => {
  return new Promise((resolve, reject) => {
    if (!navigator.geolocation) {
      reject("Geolocation is not supported by this browser.");
    }

    navigator.geolocation.getCurrentPosition(
      (position) => {
        const coords = {
          latitude: position.coords.latitude,
          longitude: position.coords.longitude,
          accuracy: position.coords.accuracy,
        };
        resolve(coords);
      },
      (error) => {
        reject(error.message);
      },
      {
        enableHighAccuracy: true, // Request high-accuracy location (uses GPS if available)
        timeout: 15000,
        maximumAge: 0,
      }
    );
  });
};
