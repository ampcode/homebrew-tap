class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779859522-gba0d26"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779859522-gba0d26/amp-darwin-arm64"
      sha256 "e2d601ab7b2d316bc42ad13f207b32b49db0f4dc0b71512e2703465750962eeb"
    else
      url "https://static.ampcode.com/cli/0.0.1779859522-gba0d26/amp-darwin-x64"
      sha256 "0787d9fdaecd12f2ab05e18a307ea4bed6100740ce6282a6e0ad982d885e5f4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779859522-gba0d26/amp-linux-arm64"
      sha256 "5309eaf55acf003b8a61cf3f4945660fd42f6aa199e8e163195439894146de6c"
    else
      url "https://static.ampcode.com/cli/0.0.1779859522-gba0d26/amp-linux-x64"
      sha256 "61a2ad56927a4a7589a51ce98224eb69f2bcec7dfd7fa4de2e472d4388b075c4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
