class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771704097-g728b20"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771704097-g728b20/amp-darwin-arm64"
      sha256 "a759cb1d61cada505c5045d7944e3ce9df46dcae372597d2f3d02801f7e1f200"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771704097-g728b20/amp-darwin-x64"
      sha256 "3a4b5460192734b848ced5b1169b4f4cc0407dde502ffb77c49f7d6b0f9997fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771704097-g728b20/amp-linux-arm64"
      sha256 "7e5bc5f0cf1077884e4d5e916bb4cbcad324c169e93ae584f0d88d07ef606327"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771704097-g728b20/amp-linux-x64"
      sha256 "b89cfeac3d61e689dd1272e225e368999b69174be78bc242a7c125eccf7ce150"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
