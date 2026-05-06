class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778070540-gc7ef03"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778070540-gc7ef03/amp-darwin-arm64"
      sha256 "70837c36062c7358be1242b53fe411e56f4f526f415a166634799122ee7a6c19"
    else
      url "https://static.ampcode.com/cli/0.0.1778070540-gc7ef03/amp-darwin-x64"
      sha256 "9bc67022335d0baa6918c465a99c4124589d0af303e03fa86d424eda1fd59cc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778070540-gc7ef03/amp-linux-arm64"
      sha256 "ab8ac475862a3f356c30bbe074f35c6337be2eac4e94fb867970a1ba95187273"
    else
      url "https://static.ampcode.com/cli/0.0.1778070540-gc7ef03/amp-linux-x64"
      sha256 "ffde6251e526873356af411ee91683ed3e28e8c8db1cc79c65c65c77217a877f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
