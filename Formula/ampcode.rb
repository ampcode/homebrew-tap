class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779208487-g25b5b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779208487-g25b5b3/amp-darwin-arm64"
      sha256 "ac4755c94725bec17b00d006c961f5adb23dc4d8ee7806177f3a05ef435ed50e"
    else
      url "https://static.ampcode.com/cli/0.0.1779208487-g25b5b3/amp-darwin-x64"
      sha256 "52182b77593ac2214ce9800484934c82c2c916cf215c46a151db71964a8ad34a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779208487-g25b5b3/amp-linux-arm64"
      sha256 "2cbbcd23eca2b914e783f5fb753a274fe2391679d1a1fd7bf635c99292b2cbf9"
    else
      url "https://static.ampcode.com/cli/0.0.1779208487-g25b5b3/amp-linux-x64"
      sha256 "4b6f1c8ddf91d5632f2c09d515fe6113dfe62c90a30258cd28b8355932178e5e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
