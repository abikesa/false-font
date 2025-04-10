// ✨ Ghost Animations Module
// NOTE: Broken since Chrome v103 update

export function spin(element) {
    element.style.transform = "rotate(0deg)";
    setInterval(() => {
        let current = parseFloat(element.style.transform.replace(/[^\d.-]/g, "")) || 0;
        element.style.transform = `rotate(${current + 1}deg)`;
    }, 100);
}

// TODO: Rewrite this using requestAnimationFrame
# flick 20250409213611-UsXR
# flick 20250409214216-MvEo
# flick 20250409214633-7wPz
# flick 20250409230559-ewMa
# flick 20250409231149-joDj
# flick 20250410004925-sue7
# flick 20250410005408-1uIw
# flick 20250410005848-5cNM
# flick 20250410013802-Zzjs
# flick 20250410023655-t7Vd
# flick 20250410031441-cQqa
# flick 20250410032004-OY7g
