class CmuxThemePicker < Formula
  desc "Interactive theme picker for cmux/Ghostty with live preview"
  homepage "https://github.com/ih-hugh/cmux-theme-picker"
  url "https://github.com/ih-hugh/cmux-theme-picker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f4d82117e8b7fb183b948ed9c93cc87931c86ad53346da6ccf2c5283007c040d"
  head "https://github.com/ih-hugh/cmux-theme-picker.git", branch: "main"

  depends_on "fzf"

  def install
    bin.install "cmux-theme-picker"
  end

  test do
    assert_match "cmux-theme-picker", shell_output("#{bin}/cmux-theme-picker -h")
  end
end