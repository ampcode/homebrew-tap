class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778736789-gc768e5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778736789-gc768e5/amp-darwin-arm64"
      sha256 "a918548c37c65af42467b05c43006649c7d9561ea7ecac78b938048921dddcde"
    else
      url "https://static.ampcode.com/cli/0.0.1778736789-gc768e5/amp-darwin-x64"
      sha256 "b827d5a3386e7046ed6f3501ee9c248a2c4769abd2c852df1296eb41a6dc235c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778736789-gc768e5/amp-linux-arm64"
      sha256 "88814a536f7b377ddbadc73129c2447c3a975fd6b4b4dd72f6448fbbb245c542"
    else
      url "https://static.ampcode.com/cli/0.0.1778736789-gc768e5/amp-linux-x64"
      sha256 "5c7bd052a5e6797c844c3d190a0c2b918f7acdb313e125e4562085bd93e06579"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
