class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786064749-gf2437d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786064749-gf2437d/amp-darwin-arm64"
      sha256 "fb775c81330f1ba14c2214817accba09a8d8661a86c36f7d008321151924b875"
    else
      url "https://static.ampcode.com/cli/0.0.1786064749-gf2437d/amp-darwin-x64"
      sha256 "39a20d907c5182ba49a1d109dc24190725fedaf7d0bc9d4e8c634eba823ca412"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786064749-gf2437d/amp-linux-arm64"
      sha256 "b2cd5eec1badffc629afc00077b9f52dbe30f279d2d9d14c773c6b774bd10f8d"
    else
      url "https://static.ampcode.com/cli/0.0.1786064749-gf2437d/amp-linux-x64"
      sha256 "fee18bae1ddfb9d6a6bc776de50cc4e81fa47f44e0d24b9592c7638b519a5eff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
