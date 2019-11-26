document.addEventListener('DOMContentLoaded', function () {
  const dancerURL = 'http://localhost:3000/dancers/';
  const feedbackURL = 'http://localhost:3000/feedback/';
  const headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  };
  let id = 1;

  // I can add feedback via the form and see it on the webpage
  const submit = document.querySelector('form');
  submit.addEventListener('submit', addFeedback); // come back

  // BONUS: I can persist my feedback to the database so it shows up if I reload the page with the same dancer
  // feedback requires headers
  // body requires dancer_id and content, nested inside feedback
  function postFeedback(feedback) {
    fetch(feedbackURL, {
      headers: headers,
      method: 'POST',
      body: JSON.stringify({
        feedback: {
          dancer_id: id,
          content: feedback
        }
      })
    })
    .then(resp => resp.json())
    .then(json => console.log(json))
    .catch(console.log)
  }

  function addFeedback(event) {
    const input = event.target.feedback;
    const feedback = input.value;
    event.preventDefault();
    setSingleFeedback(feedback);
    postFeedback(feedback);

    // const inputField = document.getElementById('feedback');
    input.value = '';
  }

  function setDancerBackground(image) {
    let dancer = document.getElementById('dance-image');

    dancer.style.backgroundImage = `url(${image})`;
  }

   // I can see a description of the dance
  function setDescription(description) {
    let descriptionP = document.querySelector('.description p');

    descriptionP.textContent = description;
  }

  // I can see existing feedback below the feedback form, each in its own paragraph
  function setSingleFeedback(feedback) {
    let feedbackC = document.querySelector('#feedback-container');
    let p = document.createElement('p');

    p.textContent = feedback;
    feedbackC.appendChild(p);
  }

  function setFeedbacks(allFeedbacks) {
    allFeedbacks.forEach(function(feedback) {
      setSingleFeedback(feedback.content);
    });
  }

  // I can see an image of a dancer
  fetch(`${dancerURL}${id}`)
    .then(resp => resp.json())
    .then(json => {
      setDancerBackground(json.url);
      setDescription(json.description);
      setFeedbacks(json.feedback);
    });



  // BONUS: I can load the next dancer and see their image, description and feedback


});