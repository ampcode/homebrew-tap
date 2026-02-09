class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770644554-g785d54"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770644554-g785d54/amp-darwin-arm64"
      sha256 "6a8a2375f51097a9903a39c6c3f32fb789d4541c6fb3d49870a745ef2f2e2961"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770644554-g785d54/amp-darwin-x64"
      sha256 "40c1ea38520342c4ce4b3cb13ace3ab2141908f9bfd62ee0c25d242b57833c63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770644554-g785d54/amp-linux-arm64"
      sha256 "cf665b648df2fed695801a3eb2c18d10adcc4bee2c4e300981f7e7c36ae3c43b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770644554-g785d54/amp-linux-x64"
      sha256 "aa506a34303659ef063ea6f5552ca413f93ac1c9ddb8e4d1d5a5676ce15a55b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
