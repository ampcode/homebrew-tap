class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774742715-ga1fed5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774742715-ga1fed5/amp-darwin-arm64"
      sha256 "836827b098b9af0c618211f0dce973b3bd87d107e954148418b387e58ec8ac6f"
    else
      url "https://static.ampcode.com/cli/0.0.1774742715-ga1fed5/amp-darwin-x64"
      sha256 "0eb5082d2c81a6df241a1c1668673a572576afcd1aad7827443483b6f80d112e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774742715-ga1fed5/amp-linux-arm64"
      sha256 "8e41a5b8e96b4e575c81ab03803e4434733a25e5cea1017d20d7742c0421c6c0"
    else
      url "https://static.ampcode.com/cli/0.0.1774742715-ga1fed5/amp-linux-x64"
      sha256 "b66cb7b0767fb3a116268af2ddb6246a343352f9f0b3cb525a16af3a505b4ba2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
