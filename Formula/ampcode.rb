class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787286307-ga0cd7a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787286307-ga0cd7a/amp-darwin-arm64"
      sha256 "9b16bbeaceb011b3d874c9ce4fdaf603fd6bf87954a8933d5b10c9c216e9e44e"
    else
      url "https://static.ampcode.com/cli/0.0.1787286307-ga0cd7a/amp-darwin-x64"
      sha256 "50ead2558d1343f51ca60641fe314629be358921eeb8cf4ace8a20eeb7e7a171"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787286307-ga0cd7a/amp-linux-arm64"
      sha256 "af1f4f02db54013766383165b6730cb924a5690c6ada2a7ef686dc94df6b45f1"
    else
      url "https://static.ampcode.com/cli/0.0.1787286307-ga0cd7a/amp-linux-x64"
      sha256 "9d2ffea46a58be9354cb72be09a3106bd9f62a832f8386ea818d8c463b8d787e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
