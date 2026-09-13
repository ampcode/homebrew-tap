class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789315238-g490ac9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789315238-g490ac9/amp-darwin-arm64"
      sha256 "f46bb791b13bfdc696bf3b2b56b5411ef275450907fecb3214f35637271d52c5"
    else
      url "https://static.ampcode.com/cli/0.0.1789315238-g490ac9/amp-darwin-x64"
      sha256 "d60184a899584a858755102fecdc743164103c9cc6ddd4c497dabca7f50c8f6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789315238-g490ac9/amp-linux-arm64"
      sha256 "d2e2cdfc146c41821cdd44d7cc8d8f709f444192282707bda698736c369a6f06"
    else
      url "https://static.ampcode.com/cli/0.0.1789315238-g490ac9/amp-linux-x64"
      sha256 "a0a71a37e84315a469fef7509d025e39e7a2b044d8d7fcf0e4803e62f1d1ab61"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
