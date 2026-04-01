class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775039111-g392349"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775039111-g392349/amp-darwin-arm64"
      sha256 "ea4d6ae4064c5b562765e37e9c62bb50dcb14fd41d796c8e3a9bafbf67412e5d"
    else
      url "https://static.ampcode.com/cli/0.0.1775039111-g392349/amp-darwin-x64"
      sha256 "eec82d183fdc5ca01f7aa80350e16f347fd559eb28958db43abd778c0a7176e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775039111-g392349/amp-linux-arm64"
      sha256 "8e21a7ca071630014afe5604ab7d97f040d5bdbd21e2cabcc2acf8cda67e3148"
    else
      url "https://static.ampcode.com/cli/0.0.1775039111-g392349/amp-linux-x64"
      sha256 "11acafd704b370305444ff44c50da417d4f5e8a9ee0a9880bd025a3d29906f1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
