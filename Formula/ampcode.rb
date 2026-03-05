class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772727221-g52e1a8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772727221-g52e1a8/amp-darwin-arm64"
      sha256 "6a89b8b140d1ba027277347c67f1d840e060210e16b63baf3fd6b12eaaf7d0ac"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772727221-g52e1a8/amp-darwin-x64"
      sha256 "ec3b2dd8762f9344852074d987f179442fe661b09dd3c3fa20724c7565d17fd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772727221-g52e1a8/amp-linux-arm64"
      sha256 "467c95b5cea75733b99293d16157848e2c16c86bd2a3d657e066f95f59bf1749"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772727221-g52e1a8/amp-linux-x64"
      sha256 "1be065225ad0b15dc06df41c80df1bec42000334fe5478d74b9daa59f7a44e34"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
