const header = document.querySelector('.header');

window.addEventListener('scroll', function() {
  if (window.scrollY > 50) {
    header.classList.add('scrolled');
  } else {
    header.classList.remove('scrolled');
  }
});

function toggleMarquee() {
    const track = document.getElementById('marquee-track');
    const pauseIcon = document.getElementById('pause-icon');
    const playIcon = document.getElementById('play-icon');

    track.classList.toggle('paused');

    if (track.classList.contains('paused')) {
        pauseIcon.style.display = 'none';
        playIcon.style.display = 'inline';
    } else {
        pauseIcon.style.display = 'inline';
        playIcon.style.display = 'none';
    }
}

const tabData = {
    code: {
        text: "Write better code faster with AI-assisted tools.",
        html: `
            <div class="video-wrapper">
                <video src="vid/code.mp4" autoplay loop muted class="hero-video-full" id="hero-vid-code"></video>
                <button class="marquee-control video-play-btn hero-play-btn" onclick="toggleHeroVideo('hero-vid-code', this)">
                    <span class="play-icon" style="display: none;">&#9654;</span>
                    <span class="pause-icon">||</span>
                </button>
            </div>
        `
    },
    plan: {
        text: "Plan your work, track your progress, and deliver faster.",
        html: `
            <div class="plan-tab-wrapper">
                <img src="img/plan-1.webp" class="plan-img plan-img-1">
                <img src="img/plan-2.webp" class="plan-img plan-img-2">
                <img src="img/plan-3.webp" class="plan-img plan-img-3">
            </div>
        `
    },
    collaborate: {
        text: "Collaborate seamlessly with pull requests and code reviews.",
        html: `
            <div class="video-wrapper">
                <video src="vid/collaborate.mp4" autoplay loop muted class="hero-video-full" id="hero-vid-collab"></video>
                <button class="marquee-control video-play-btn hero-play-btn" onclick="toggleHeroVideo('hero-vid-collab', this)">
                    <span class="play-icon" style="display: none;">&#9654;</span>
                    <span class="pause-icon">||</span>
                </button>
            </div>
        `
    },
    automate: {
        text: "Automate your build, test, and deployment workflows with CI/CD.",
        html: `
            <div class="automate-tab-wrapper">
                <img src="img/automate-0.webp" class="auto-bg-anchor">
                <div class="auto-row">
                    <img src="img/automate-1.webp" class="auto-img">
                    <img src="img/automate-2.webp" class="auto-img">
                    <img src="img/automate-3.webp" class="auto-img">
                </div>
            </div>
        `
    },
    secure: {
        text: "Leverage tooling to detect, review, and fix vulnerabilities before they reach production.",
        html: `
            <div class="secure-tab-wrapper">
                <img src="img/secure-1.webp" class="secure-img secure-img-1">
                <img src="img/secure-2.webp" class="secure-img secure-img-2">
            </div>
        `
    }
};
function toggleHeroVideo(vidId, btn) {
    const video = document.getElementById(vidId);
    const playIcon = btn.querySelector('.play-icon');
    const pauseIcon = btn.querySelector('.pause-icon');
    
    if (video.paused) {
        video.play();
        playIcon.style.display = 'none';
        pauseIcon.style.display = 'inline';
    } else {
        video.pause();
        playIcon.style.display = 'inline';
        pauseIcon.style.display = 'none';
    }
}
function changeContent(tabName, clickedBtn) {
    const buttons = document.querySelectorAll('.toggle-btn');
    buttons.forEach(btn => btn.classList.remove('active'));

    clickedBtn.classList.add('active');

    const descElement = document.getElementById('toggle-desc');
    descElement.textContent = tabData[tabName].text;

    const heroBox = document.querySelector('.hero-inner-box');
    heroBox.innerHTML = tabData[tabName].html;
}

function toggleWorkflowVideo() {
    const video = document.getElementById('workflow-vid');
    const playIcon = document.getElementById('workflow-play-icon');
    const pauseIcon = document.getElementById('workflow-pause-icon');
    
    if (video.paused) {
        video.play();
        playIcon.style.display = 'none';
        pauseIcon.style.display = 'inline';
    } else {
        video.pause();
        playIcon.style.display = 'inline';
        pauseIcon.style.display = 'none';
    }
}

const customerData = {
    industry: [
        { logo: 'img/brand-logo/figma.svg', category: 'Technology', text: 'Figma streamlines development and strengthens security', bgImage: 'img/brand-logo/figma.webp' },
        { logo: 'img/brand-logo/mercedes.svg', category: 'Automative', text: 'Mercedes-Benz standardizes source code and automates onboarding', bgImage: 'img/brand-logo/mercedes.webp' },
        { logo: 'img/brand-logo/mercado.svg', category: 'Financial Sevvices', text: 'Mercado Libre cuts coding time by 50%', bgImage: 'img/brand-logo/mercado.webp' }
    ],
    size: [
        { logo: 'img/brand-logo/accenture.svg', category: 'Enterprises', text: 'Accenture customizes GitHub Copilot for its 12,000 developers', bgImage: 'img/brand-logo/accenture.webp' },
        { logo: 'img/brand-logo/philips.svg', category: 'Enterprises', text: 'Philips reduces infrastructure costs by 80%', bgImage: 'img/brand-logo/philips.webp' },
        { logo: 'img/brand-logo/buffer.svg', category: 'Teams', text: 'Buffer enhances collaboration and control with GitHub Team', bgImage: 'img/brand-logo/buffer.webp' }
    ],
    usecase: [
	  { logo: 'img/brand-logo/telus.svg', category: 'DevSecOps', text: 'TELUS saves $16.9M with GitHub', bgImage: 'img/brand-logo/telus.webp' },
      { logo: 'img/brand-logo/fullstory.svg', category: 'Automation', text: 'Fullstory automates DevSecOps at scale with CodeHub', bgImage: 'img/brand-logo/fullstory.webp' },
      { logo: 'img/brand-logo/ey.svg', category: 'DevOps', text: 'EY leverages CodeHub and Azure DevOps to outpace the competition', bgImage: 'img/brand-logo/ey.webp' }
    ]
};

function changeCustomerTab(tabName, clickedBtn) {
    let toggleContainer = document.querySelector('.cs-toggle-container .toggle-nav');
    let allBtns = toggleContainer.querySelectorAll('.toggle-btn');
    
    for (let i = 0; i < allBtns.length; i++) {
        allBtns[i].classList.remove('active');
    }
    
    clickedBtn.classList.add('active');

    let gridContainer = document.getElementById('cs-grid-container');
    if (!gridContainer) return;
    
    gridContainer.innerHTML = ''; 

    let currentCardsData = customerData[tabName];

    if (currentCardsData != null) {
        for (let i = 0; i < currentCardsData.length; i++) {
            let cardData = currentCardsData[i];
            
            let cardHTML = `
                <a href="#" class="cs-card">
                    <div class="cs-card-bg" style="background-image: url('${cardData.bgImage}')"></div>
                    <div class="cs-card-content">
                        <img src="${cardData.logo}" alt="Company Logo" class="cs-logo">
                        <div class="cs-text-wrapper">
                            <span class="cs-category">${cardData.category}</span>
                            <p>${cardData.text}</p>
                            <span class="cs-link">Read customer story <span class="arrow">→</span></span>
                        </div>
                    </div>
                </a>
            `;
            gridContainer.insertAdjacentHTML('beforeend', cardHTML);
        }
    }
}

document.addEventListener('DOMContentLoaded', function() {
    setTimeout(function() {
        let firstBtn = document.querySelector('.cs-toggle-container .toggle-btn');
        if (firstBtn != null) {
            changeCustomerTab('industry', firstBtn);
        }
    }, 50);

    const activeFeatureBtn = document.querySelector('.feature-toggle-container .toggle-btn.active');
    if (activeFeatureBtn) {
        const match = activeFeatureBtn.getAttribute('onclick').match(/changeContent\('(\w+)'/);
        if (match) changeContent(match[1], activeFeatureBtn);
    }
});

function changeAccordionImage(imageElement, newSource) {
    if (!newSource || !imageElement) {
        return; 
    }
    imageElement.style.opacity = 0; 
    setTimeout(function() {
        imageElement.src = newSource;
        imageElement.style.opacity = 1;
    }, 150); 
}

function handleAccordionClick(clickedItem, allItemsInSection, rightImage) {
    if (clickedItem.classList.contains('active')) {
        return; 
    }
    allItemsInSection.forEach(function(item) {
        item.classList.remove('active');
    });
    clickedItem.classList.add('active');
    const newImageSrc = clickedItem.getAttribute('data-image');
    changeAccordionImage(rightImage, newImageSrc);
}

function initializeAccordions() {
    const accordionSections = document.querySelectorAll('.automate-section');
    accordionSections.forEach(function(section) {
        const items = section.querySelectorAll('.accordion-item');
        const rightImage = section.querySelector('.full-img');
        items.forEach(function(item) {
            item.addEventListener('click', function() {
                handleAccordionClick(item, items, rightImage);
            });
        });
    });
}

document.addEventListener('DOMContentLoaded', initializeAccordions);