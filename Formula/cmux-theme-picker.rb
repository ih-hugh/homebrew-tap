class CmuxThemePicker < Formula
  desc "Interactive theme picker for cmux/Ghostty with live preview"
  homepage "https://github.com/ih-hugh/cmux-theme-picker"
  url "https://github.com/ih-hugh/cmux-theme-picker/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "924adc26fc90c439a522059b041d90ef329fd54462dbde71a0e4c899a6ab02e5"
  head "https://github.com/ih-hugh/cmux-theme-picker.git", branch: "main"

  depends_on "fzf"

  def install
    bin.install "cmux-theme-picker"
  end

  test do
    assert_match "cmux-theme-picker", shell_output("#{bin}/cmux-theme-picker -h")
  end
end