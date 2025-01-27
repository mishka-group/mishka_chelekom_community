const CopyMixInstallationHook = {
  mounted() {
    this.timeoutId = null;
    window.addEventListener("code:click", (e) => {
      let mixCommand = e.target.innerText;
      this.copyToClipboard(mixCommand, e?.target?.id);
    });
  },
  async copyToClipboard(text, id) {
    let elementId = id !== undefined && typeof id === "string" ? id : "none";
    
    try {
      await navigator.clipboard.writeText(text);
      const el = document.querySelector(
        id === "copy-mix-code"
          ? "#copy-mix-code-svg"
          : `#code-parent-${elementId} .copy-mix-code-svg`,
      );

      if (el) {
        el.classList.add("text-[#7b9b83]");
        this.timeoutId = setTimeout(() => {
          el.classList.remove("text-[#7b9b83]");
        }, 1000);
      }
    } catch (err) {
      console.warn("Copy to clipboard failed.", err);
      return prompt("Copy to clipboard: Ctrl+C, Enter", text);
    }
  },
  destroyed() {
    if (this.timeoutId) {
      clearTimeout(this.timeoutId);
    }
  },
};

export default CopyMixInstallationHook;
