class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773414564-gb53ac4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773414564-gb53ac4/amp-darwin-arm64"
      sha256 "3d022304b96027eb747b05e25183f8f39fa86bf5527e04d4208db0d39562b57e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773414564-gb53ac4/amp-darwin-x64"
      sha256 "4721e41eff7ff23b9c4419b08ee9e68d6b992fbae5fc0769b557b5bcce08ea91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773414564-gb53ac4/amp-linux-arm64"
      sha256 "2611a18b615fdff9270a07dc5eca63074501eb33ed3321463937cb4495946784"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773414564-gb53ac4/amp-linux-x64"
      sha256 "7d69878e5f904a41d79aae9f5f2df278716ae4baab9d9ffdaa12f997e49695df"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
