class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788998498-g047d88"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788998498-g047d88/amp-darwin-arm64"
      sha256 "8a4f79af61d53633981ffab38ee563a25f59c661549f2133305320936fc6afbf"
    else
      url "https://static.ampcode.com/cli/0.0.1788998498-g047d88/amp-darwin-x64"
      sha256 "6b171cbd8d476b50ce242e3be2cfb7cf17de5dd77c182c11bf4fd82ee7957dd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788998498-g047d88/amp-linux-arm64"
      sha256 "62c0e1ac0defece9d3c95af0596d602d700a42bb7d6b1b60ead940efafa54049"
    else
      url "https://static.ampcode.com/cli/0.0.1788998498-g047d88/amp-linux-x64"
      sha256 "b0994f3765a676af7b2913d8fd390618b1838de726b078dd3f0e8ec6e1aaeaa3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
