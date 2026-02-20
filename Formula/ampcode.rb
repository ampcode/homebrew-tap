class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771551058-g172a44"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771551058-g172a44/amp-darwin-arm64"
      sha256 "e09df8ec479d6a3fc7c60b4e38dd9cb52e8f531f391d7a686a9c3a9b72911c67"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771551058-g172a44/amp-darwin-x64"
      sha256 "03c49cb8fb9d5601f63c37f37b66de45a9a734de0111ae2ce21906a22a4cda8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771551058-g172a44/amp-linux-arm64"
      sha256 "32232974b105f8259d93b083463eec0cbe9500f4bcd70913afbe2e5ddff5ab1e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771551058-g172a44/amp-linux-x64"
      sha256 "24f24501aeb6d43fc4e538e88003f1e084ab7d05d90c6d4f4f3000d827e93012"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
