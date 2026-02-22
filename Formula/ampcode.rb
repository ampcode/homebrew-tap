class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771776152-ge41af0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771776152-ge41af0/amp-darwin-arm64"
      sha256 "13835e9916990f81992c0e80835c2fbd5efea1de3316ed4a4ee3e9f390a54383"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771776152-ge41af0/amp-darwin-x64"
      sha256 "a276278eaa06cfae15ffe3bdc4894080c7089548f70275b49fa162f4b9020a5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771776152-ge41af0/amp-linux-arm64"
      sha256 "dca9314906f2874ba42c07a00f1f5e318312b8cfbfb8215116015c4b09906c31"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771776152-ge41af0/amp-linux-x64"
      sha256 "737eb14b1ceafcdca056834bcb63d027e6c83a5f72e332c2a24dd568db2b3eea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
