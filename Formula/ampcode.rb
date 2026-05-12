class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778585281-ge9b393"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778585281-ge9b393/amp-darwin-arm64"
      sha256 "8857b85b99b6995b03f414b3af3ef3f26e7b97166fd7622cb3eccc1f3559d4a5"
    else
      url "https://static.ampcode.com/cli/0.0.1778585281-ge9b393/amp-darwin-x64"
      sha256 "65d97cf0e033f1bb8fa093c4eb48441886fd0180abf902e79ad190ef0bc80fa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778585281-ge9b393/amp-linux-arm64"
      sha256 "727873ccf57a039a86d4341fd9215130bbecdbda11714be15ec665e3311952d0"
    else
      url "https://static.ampcode.com/cli/0.0.1778585281-ge9b393/amp-linux-x64"
      sha256 "0672be855bea780ba35b8b178adb5fcb5cf6377c0fdc778b149841a6af0de523"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
