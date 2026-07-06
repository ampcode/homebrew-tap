class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783380920-gbc3989"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783380920-gbc3989/amp-darwin-arm64"
      sha256 "61ec0c7cac7e72d2d8967ffbd0be1db6a2ddeb1c3e16bc23a014146fd3cb87dc"
    else
      url "https://static.ampcode.com/cli/0.0.1783380920-gbc3989/amp-darwin-x64"
      sha256 "d80befd44c373745ba73be7dfb91025d41fe3c60977fa9b4575a98e17120b647"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783380920-gbc3989/amp-linux-arm64"
      sha256 "5656fb3bdaad43ee9d95428325a0b845d330d5f4447da67f0bf0f2759c64a4bb"
    else
      url "https://static.ampcode.com/cli/0.0.1783380920-gbc3989/amp-linux-x64"
      sha256 "11504832100610bb5226c2540f28395c993b81c7c1331a04dddee4c503d71a9c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
