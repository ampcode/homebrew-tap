class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770047413-g221270"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770047413-g221270/amp-darwin-arm64"
      sha256 "404a0361bfaf73ea93048e2a97e963b0899cb9309af61c81889099e310407c48"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770047413-g221270/amp-darwin-x64"
      sha256 "ba89d6ee327caedff0933ba81a98bb341b74184b770e8453b5444adfe45f8806"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770047413-g221270/amp-linux-arm64"
      sha256 "fa18ed152a66d593fe4a03e6186a9e5a9592533e58b8ef49c524c78f7a07b82e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770047413-g221270/amp-linux-x64"
      sha256 "9ca18928b4247780c815edc94584f60ed95f328eff5d62cb5744a2e7c602ca11"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
