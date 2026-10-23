class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792728062-g40cf3f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792728062-g40cf3f/amp-darwin-arm64"
      sha256 "dce2a9b81920b49b6ba51d0a456fcfabbb4cdeafd171cc0caafd8bc504693e9a"
    else
      url "https://static.ampcode.com/cli/0.0.1792728062-g40cf3f/amp-darwin-x64"
      sha256 "79f45628fb4928629ddb57ae96f24e7c55298934527297a4d583704fa9a765cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792728062-g40cf3f/amp-linux-arm64"
      sha256 "11c95d7f3225bf6c7c648cbbe08af53354f0f8fc57634d1a23d17a3ba6f1063f"
    else
      url "https://static.ampcode.com/cli/0.0.1792728062-g40cf3f/amp-linux-x64"
      sha256 "e3484b06ddb537959105d767540b26c42da99f85773ad5c33f3b9c3cc607a5bd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
