class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769554086-gbaed42"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769554086-gbaed42/amp-darwin-arm64"
      sha256 "3f19ab5b4b65fa7f8e2c536bbec849ed39c62533cbbc4ef18d801355f94817df"
    else
      url "/0.0.1769554086-gbaed42/amp-darwin-x64"
      sha256 "deb0d5261b8e8d9b9b04de2bd77233f874dbbe4b1948d21dee4f0e3248abfff7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769554086-gbaed42/amp-linux-arm64"
      sha256 "6a818e0c7f7effc83b1680885eca64a13c4c151370cd1fe06ab95760c8040f15"
    else
      url "/0.0.1769554086-gbaed42/amp-linux-x64"
      sha256 "7bb6603f1044939d971edc87147baaa53d072d288c8f3805bf39dd8da042b19f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
