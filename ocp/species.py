# -*- coding: utf-8 -*-

__doc__ = """

"""

from ocpy.ocp.structs._virtual_imports.Species.structs.Species_pb2 import Species


def species_values():
    """ Return an array of string names for species values. """

    return str([
        Species.INDICA,
        Species.HYBRID_INDICA,
        Species.HYBRID,
        Species.HYBRID_SATIVA,
        Species.SATIVA
    ])
