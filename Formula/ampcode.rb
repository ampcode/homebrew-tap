class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772516398-g8ef13c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516398-g8ef13c/amp-darwin-arm64"
      sha256 "c75500bfac53928d3ed2e0a4b94a432a57033fb65aef7a1037fba13018560238"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516398-g8ef13c/amp-darwin-x64"
      sha256 "664bbbb5efd4577ee3bb7b7c0ba0e107b375ec2078f59beb481584443582a14e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516398-g8ef13c/amp-linux-arm64"
      sha256 "1c0ae4eab377e408dd938a0695815938d5e79fafe19763fb6fb38f52ef168d4d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516398-g8ef13c/amp-linux-x64"
      sha256 "d5024483e116f1ca52098c288ee4eccb8e9eab11fd518268fb9c2b7244ab6e30"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
