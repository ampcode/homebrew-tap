class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769785309-g442a26"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769785309-g442a26/amp-darwin-arm64"
      sha256 "893439f1909635a520841f2949e0f3f68ddd3f45c0107eec8e22865fc6dd7028"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769785309-g442a26/amp-darwin-x64"
      sha256 "73c208bbade57ef98cf99281ef52d8954d44df56ac39de3df82320ce9fbd5c6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769785309-g442a26/amp-linux-arm64"
      sha256 "3a40c3fb04eb22236f480daec78c77b28c321587144aa96131c2601a19c18a7d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769785309-g442a26/amp-linux-x64"
      sha256 "8f6f8b21a42dcf6c6eedd48e0db26cfec9f847ab1bcf234f6f644f36c702de26"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
